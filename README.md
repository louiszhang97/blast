# Welcome to Blast!
This is an app I created for my fraternity to blast-text the entire house in cases where third-party messaging apps might not be checked quickly enough. It's developed with Ruby on Rails and Twilio's REST API, with layouts from the Bootstrap front-end framework that websites like Twitter utilizes.

To get started, you must have: 
1. Ruby running version 2.4.1 or later
2. Rails installed (I'm running 5.1.2)
3. An active Twilio account/phone number that can send SMS messages

# Getting Started:
1. In blast/account_info.rb, fill in your Twilio account credentials 
2. Enter the rails console and setup the database: 
```ruby 
rails console
rake db:setup
```
3. Generate your organization's login key (Be sure to only have one key generated): 
```ruby
Key.create :key => 'YOUR KEY HERE.'
``` 
4. Feel free to change the layout of the views! The site isn't very pretty due to my lack of front-end design experience. 

# Video Tutorial
Coming soon! 


# Deployment
While it's not necessary, deployment is necessary if you'd like to distribute your organization's copy to its members (unless you want members opening up their terminal to run it locally.) It might just be easier to deploy on Heroku. I've configured the app to use PostgreSQL when deployed instead of Rails' default SQLite3 since Heroku doesn't support SQLite3. Deployment guides can be found here: https://devcenter.heroku.com/categories/deployment

# Future
I'll probably update the visuals or add new features if I have any ideas, but as of now the app has served all of its intended purposees. 
