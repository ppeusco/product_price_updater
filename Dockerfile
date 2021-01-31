FROM ruby:3.0.0

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
COPY . .

RUN bundle install

ENTRYPOINT ["ruby", "lib/product_price_updater.rb"]



