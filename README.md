# product_price_updater

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/1a863c68b4c04358a53061031b587cf5)](https://app.codacy.com/gh/ppeusco/product_price_updater?utm_source=github.com&utm_medium=referral&utm_content=ppeusco/product_price_updater&utm_campaign=Badge_Grade)

Build in ruby a script that updates the prices of a list of products, following some rules.

To run the script you must have ruby installed and do:
> ruby lib/product_price_updater.rb

To run the test:
> bundle exec rspec   

If you don't have Ruby installed, you can use Docker by doing:
> docker build -t my-ruby-app .

> docker run -it --name my-running-script my-ruby-app
