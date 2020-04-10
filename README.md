# E-Commerce website - Shopperly :shirt::handbag::shopping::ring:
###### *Developed by - @Sneha-Sabu - Student ID: 51987943*
### About the application:
This is a Ruby on Rails application based on an open source dataset representing E-commerce product information found on https://data.world/promptcloud/product-details-on-flipkart-com/workspace/file?filename=flipkart_com-ecommerce_sample.csv.
The spreadsheet of the dataset needed to be imported into the application using a Parsing method explained in detail at https://github.com/scharlau/parsing which was a guiding tool to parse the CSV of the dataset. This application uses the rake command to import the dataset into the database since it can process large records of data at once. </p>

## Running application
The live application has been deployed on Heroku and can be accessed through the following link:
https://shopperly.herokuapp.com/ 

* You can use these account details to log in as Admin and click on the 'Dashboard' menu option to access the Admin Dashboard:   
Admin - test_admin@test.com
Password - password  
* To login as a normal user:  Signup on the site if you are a new user. If you already have an account then login using your registered Email id and Password.

## System Requirements 
#### This application has the following system dependencies:
* Ruby version  - '2.6.3'
* Rails version - '6.0.2.2'

#### The following are the Gems to be installed in order to run the application with it's existing functionalities:
List 1 | List 2 
------------ | -------------
gem 'puma', '~> 4.1'| gem 'will_paginate'
gem 'sass-rails', '>= 6' | gem 'webpacker', '~> 4.0'
gem 'jquery-rails' | gem 'bootstrap', '~> 4.4.1'
gem 'turbolinks', '~> 5' | gem 'jbuilder', '~> 2.7'
(not necessary) gem 'redis', '~> 4.0' | (not necessary) gem 'bcrypt', '~> 3.1.7'
gem 'bcrypt', '~> 3.1.7' | gem 'devise'
gem 'toastr-rails' | gem 'jquery-rails'
gem 'rails_admin', '~> 2.0', git: 'https://github.com/sferik/rails_admin.git' | gem 'rails_admin_charts'
gem 'cancancan' | gem 'sendgrid-ruby'
gem "chartkick" | gem 'groupdate'
gem 'hightop' | gem 'activerecord-session_store'
gem "recaptcha" | gem 'devise_zxcvbn'

#### Configuration and running the application
Listed below are the requirements to configure the application: (All commands are as per how they are to be written in the terminal. If requested to add something to a folder it will be specificly written):
1. Create a new application using the following command:
  rails new Shopperly
2. Rails attempts to pluralize singular words while creating scaffolds. If you want to remove all pluralizations add the following code to the /config/initializers/inflections.rb file <br/>
ActiveSupport::Inflector.inflections do |inflect| <br/>
inflect.clear <br/>
inflect.singular(/$/i, '') <br/>
end
3. Create scaffolds for the following:
  * Cart
  * Categories
  * Countries
  * Line Item
  * Order
  * Products
  * Sessions
  * Users
4. Load the migration file into the database with the command:
  * rails db:migrate
5. Configure the application by editing the /config/routes.rb file by adding the following code below the get line:
  * root 'shopperly#index'
6. Display the required data using the relevant attribute names on the view files.
7. Before running rails server, it’s necessary on some systems (including the cloud IDE) to allow connections to the local web server. To enable this, you should navigate to the file config/environments/development.rb and paste in the two extra lines shown <br/>
  #Allow connections to local server. <br/>
 config.hosts.clear
8. Check that the application works by switching to the console and start the server with the command
  * rails server

 #### Charts
 * Chartkicks are used for generating interactive charts and graphs to represent the statistics related to Products, Orders, Users etc. on the Dashboard page of the application to provide the Admin user an insight on the cumulative dataset. The charts have been generated following the instructions at the bottom of the page on https://homepages.abdn.ac.uk/b.scharlau/pages/practical-three-adding-models-to-the-travel-agent/. The charts display accurate counts of statistics such as orders placed each minute, each day, each week, etc.
Following steps are to be taken to install and run Chartkick on the application:
* Add gem "chartkick" in the Gemfile and run bundle install.
* yarn add chartkick chart.js
* Add the following lines in the app/javascript/packs/application.js file:
  require("chartkick")
  require("chart.js")

#### Dataset importing with Rake file
To start developing the application in order to display the data the following steps have to be taken:
* rails g task shopperly seed_shopperly
* Running the above command will create a file under lib/tasks/shopperly.rake which can be modified by specifying tasks and details of each database table and the column names to be inserted in each table from the excel.

Run the following three commands one by one to import data into each table:
* rake shopperly:seed_countries
* rake shopperly:seed_categories
* rake shopperly:seed_products

#### Maps
This application uses Mapbox with Leaflet for displaying locations of each recorded Flood.

#### Layout and Bootstrap integration
The following steps have to be taken in order to integrate Bootstrap into the layout of the application:
* yarn add bootstrap
* yarn add bootstrap jquery popper.js
* Open config/webpack/environment.js and add:\
const { environment } = require('@rails/webpacker')\
const webpack = require('webpack')\
environment.plugins.prepend('Provide',\
new webpack.ProvidePlugin({\
$: 'jquery/src/jquery',\
jQuery: 'jquery/src/jquery',\
Popper: ['popper.js', 'default']\
})
* Go to app/javascript/packs/application.js and add:\
import "../stylesheets/application"
import './bootstrap_custom.js'
The remaining steps have been outlined in this tutorial: https://medium.com/@guilhermepejon/how-to-install-bootstrap-4-3-in-a-rails-6-app-using-webpack-9eae7a6e2832

## Application pages - Layouts
 
1. Layout of the Homepage - Includes a list of Product descriptions and Application information.
![Homepage](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/homepage.jpg)

2. Layout of the Categories page - Includes a list of Categories of products available.
![Categories](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/categories.jpg)
 
3. Layout of the Products page - Includes a list of Products. Includes a search functionality which enables the users to find more information about any product of their choice.
![Products](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/products.jpg)
 
4. Layout of the Product details page - Includes detailed product description about any selected product.
![Products](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/Product%20details.jpg)

5. Layout of the Cart page - Includes a list of selected products to be purchased.
![Cart](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/Cart.jpg)

6. Layout of the Order details page - Includes a form to store the Order details and place the order. 
![Order details](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/Order%20details.jpg)

7. Layout of the Order summary page - Displays a summary of the Order placed along with a map to display the shipping location of the intended order.
![Order details](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/Order%20summary.jpg)

8. Layout of the Profile page - Displays the account details of the user and provides the option to edit their details.
![Profile](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/Profile.jpg)

9. Layout of the Signup page - Displays registration details required to register on the website.
![Signup](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/signup.jpg)

10. Layout of the Login page - Displays a form for existing users to login to the website. 
![Login](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/login.jpg)

11. Layout of the Admin dashboard page - Consists of various bar graphs, pie charts, line charts, etc. to display statistics.
![Admin](https://github.com/Sneha-Sabu/Shopperly/blob/master/app/assets/images/Admin%20dashboard.jpg)

## Deployment instructions

#### Github Setup Instructions

1. Create a repository for your project on Github
2. Upload the project to the repository created
3. cd your project
4. copy the link of your GitHub repository 
5. run git clone url repository to make a copy of the project repository
6. git branch name – to create a working branch
7. git pull – to update working branch before making changes 
8. git add -A  to add all changes made 
9. git commit -m “comment”- to commit it 
10. git push - to push the change from working branch to master branch
11. open GitHub and create a pull request
12. review changes and merge it 
 
#### To update your working branch, you need to follow these steps:

1. git checkout master - to switch from working branch to local master branch
2. git fetch -p origin – to fetch everything from the master branch on GitHub
3. git merge origin/master to update your local master branch 
4. git checkout branch name – to switch to your working branch 
5. git merge master - to update your working branch  

#### Deployment on Heroku

1. cd project name
2. Add Gem ‘pg.’ to production: do field in the Gemfile 
3. Run bundle install – – without production 
4. Create an account on Heroku 
5. heroku login  
6. heroku keys:add id_rsa.pub to add ssh keys to your account 
7. heroku create – to create an application
8. heroku apps:rename newname –app oldname (to rename your application)
9. git config –list  | grep Heroku  (to verify that the remote was added to your project)
10. git init to be access your repository
11.	git add.
12.	git commit -m “init”
13.	git status – to check the status of the local master branch before deployment 
14.	git push heroku master ( to push your local master branch to heroku)
15.	heroku rake db:migrate – to migrate database to heroku
16.	heroku open – to open your application on heroku

#### To import the data of the tables on Heroku you need to run the following 3 commands:
1. heroku rake shopperly:seed_countries
2. heroku rake shopperly:seed_categories
3. heroku rake shopperly:seed_products

## Security Measures
1. Installing the gem 'activerecord-session_store' - A session store of the Active Record class and storing the session details in the database.
2. Installing the gem 'brakeman' which is a vulnerability scanner designed for Ruby on Rails applications which scans the application and generates a report of any security issues present in the application.
3. Set config.force_ssl = true in the config file to provide a secure connection over SSL.
4. Rotating Encrypted and Signed Cookies Configurations - for changing cookie configurations and ensuring old cookies aren't immediately invalid enabling users to visit the site, get their cookie read with an old configuration and rewritten with any new change.
5. reset_session - The Devise gem installed for User management automatically resets or expires sessions on signing in and signing out of the site.
6. protect_from_forgery with: :exception - Automatically added in the Application Controller, protects the site against forged requests and introduces a required security token in requests.
7. Storing encrypted passwords - The Devise gem stores encrypted passwords instead of plain-text passwords.
8. Installing the gem "recaptcha" - In order to mitigate Brute force attacks on accounts. You get two keys from the API, i.e. a public and a private key to be included in the Rails environment. Included on the registration page to add additional security. 
9. Passwords - Requiring the user to enter the old password in order when changing it to make the process of changing passwords safe against CSRF 

## Testing

#### Comments:

Sendgrid
Orders page on the Admin Dashboard




**Shopperly 2020 © Copyright**
**Under Terms and Agreements of University of Aberdeen and Software distribution**
