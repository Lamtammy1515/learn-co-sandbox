
# FoodOrder

Welcome ! 

This is a web app created in Sinatra that simulates a website for food orders.

## Overview

This web app has two interfaces:

A Restaurant Interface: login, signup, see orders(recieved from users), create items (dishes), edit item, delete item.
### and
A User Interface: login, signup, orders history, create new order, cancel order (available only for new orders).

## Installation

Clone this repository 
#### In your terminal, run 'bundle install' to install all required gems.
#### In your terminal, type 'rake db:seed' to fill up the database with 3 user accounts and 3 restaurants with 6 items on each.

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

In your terminal, type 'rake db:seed' to fill up the database with 3 user accounts and 3 restaurants with 6 items on each.
In your terminal, type 'shotgun' to start the server.
In your browser, visit: http://127.0.0.1:9393/ to visit the homepage.
### 
Login as a User using any of the accounts:
#### email: "toni@example.com", password:"toni"
#### email: "test@example.com", password:"test"
#### email: "user@example.com", password:"user"
### 
or as a restaurant using any of the accounts:
### 
#### email: "beulah@example.com", password: "beulah"
#### email: "mantanah@example.com", password: "mantanah"
#### email: "yosushy@example.com", password: "yosushy"

Firstly login of signup as a User and create a new order.
Log in as the restaurant you just created the order and see the new order in the "Orders" section.
In any restaurant account you have the option to add, edit or delete any item that belongs to that restaurant.

## Development

After checking out the repo, run `bundle install` to install dependencies.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/antonzaharia/Food-Order. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the (https://github.com/antonzaharia/Food-Order/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://github.com/antonzaharia/Food-Order/blob/master/LICENSE.txt).

## Code of Conduct

Everyone interacting in the Food Order project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/antonzaharia/Food-Order/blob/master/CODE_OF_CONDUCT.md).