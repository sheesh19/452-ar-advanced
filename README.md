karr-db-03
==========

## ActiveRecord boilerplate

This is a minimalist implementation of ActiveRecord to live-code a demo for @LeWagon students

- clone the repo
- run `rake db:create` to create your db
- run your migrations with `rake db:migrate`

Now you can play with the `Restaurant` model:

```bash
$ irb
irb> load "config/application.rb"
irb> load "app/models/restaurant.rb"
irb> restaurant = Restaurant.new(name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris")
irb> restaurant.persisted?
     # => false
irb> restaurant.id
     # => nil
irb> restaurant.save
irb> restaurant.id
     # => 1
```
