
# FoodOrder

Welcome ! 

This is a web app created in Sinatra that simulates a website for food reviews.

## Overview

This web app has two interfaces:

A Review Interface: creates reviews, edits reviews, delete reviews.
### and
A User Interface: login, signup, orders history, create new review, delete that users review.

## Installation

Clone this repository 
#### In your terminal, run 'bundle install' to install all required gems.


## How to run the program

#### In your terminal, type 'shotgun' to start the server.
#### In your browser, visit: http://127.0.0.1:9393/ to visit the homepage.

## Files information

#### '/db/migrate' has all the migrations files
#### '/config' has the setup environment
#### '/app' has the actual code files where all the work is done.
#### '/app/controllers' has the sinatra controllers files
#### '/app/models' has the ruby models
#### '/app/views' has the .erb files to be rendered
#### Gemfile has all the required gems to run this project

## Usage

In your terminal, type 'shotgun' to start the server.
In your browser, visit: http://127.0.0.1:9393/ to visit the homepage.
### 
Login as a User using this account as an example:
#### name: "tammylam", password:"tammylam"

or Sign up with a name, email, and password:

#SAMPLE #### name: "beulah" email: "beulah@example.com", password: "beulah"

Firstly login or signup as a User and create a new review.
Once you're logged in, you will be able to see all the lastest food reviews.
You now have the option to add, edit or delete any review that belongs to you.

## Development

After checking out the repo, run `bundle install` to install dependencies.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/antonzaharia/Food-Order. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the (https://github.com/antonzaharia/Food-Order/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://github.com/antonzaharia/Food-Order/blob/master/LICENSE.txt).

## Code of Conduct

Everyone interacting in the Food Order project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/antonzaharia/Food-Order/blob/master/CODE_OF_CONDUCT.md).