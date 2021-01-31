# product_price_updater
Build in ruby a script that updates the prices of a list of products, following some rules.

To run the script you must have ruby installed and do:
> ruby lib/product_price_updater.rb

To run the test:
> bundle exec rspec   

If you don't have Ruby installed, you can use Docker by doing:
> docker build -t my-ruby-app .

> docker run -it --name my-running-script my-ruby-app
