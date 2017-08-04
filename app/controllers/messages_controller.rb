class MessagesController < ApplicationController
  include SessionsHelper
  before_action :set_message, :check_expire, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    temp = params.require(:message)
    date = String(Time.now.inspect)[0..18] #trims/formats the Time 
    @message = Message.new(:date => date, :content => temp[:content], :sender_id => temp[:sender_id])
    respond_to do |format|
      if @message.save
        send_message_to_all(temp[:sender_id], temp[:content], date)
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def send_message_to_all(sender, text, date)
    load 'account_info.rb'
    @client = Twilio::REST::Client.new $account_sid, $auth_token
    Member.all.each do |member|
      @client.account.messages.create({
        :from => $phone_num,
        :to => member.phone, 
        :body => "-DO NOT REPLY-\n" + "From " + sender + ":\n" + text + "\n" + date
      })
    end 
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:date, :content, :sender_id)
    end
end
