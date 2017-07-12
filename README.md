Welcome to LambdaTime! This is an app I created for my fraternity to blast-text the entire house in cases where third-party messaging apps might not be checked quickly enough. It's developed with Ruby on Rails and Twilio's REST API, with layouts from the Bootstrap front-end framework that websites like Twitter utilizes. 

LambdaTime isn't just for Greek organizations, it can be used for any organization that would like to utilize Twilio's service! All you'll want to do is change the logos of the organization in the app/assets/images folder, or even rename the app in the app/views from "LambdaTime" to anything you'd like. 

To get started, you must have: 
	1. Ruby running version 2.4.1 or later
	2. Rails installed (I'm running 5.1.2)
	3. An active Twilio account/phone number that can send SMS messages




Deployment:  While it's not necessary, deployment is necessary if you'd like to distribute your organization's copy to its members (unless you want members opening up their terminal to run it locally.) It might just be easier to deploy on Heroku. I've configured the app to use PostgreSQL when deployed instead of Rails' default SQLite3 since Heroku doesn't support SQLite3. Deployment guides can be found here: https://devcenter.heroku.com/categories/deployment

Future: I'll probably update the visuals or add new features if I have any ideas, but as of now the app has served all of its intended purposees. 



