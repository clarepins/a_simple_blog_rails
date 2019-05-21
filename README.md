# A simple blog - Rails

This is a *blogTastic* blogging site built for blogaholics to blog about blogging.
It takes inspiration from the [getting started with rails](https://guides.rubyonrails.org/getting_started.html) guide.

## Setup instructions: 
- follow instructions [here](https://guides.rubyonrails.org/getting_started.html#installing-rails) if you need to install Ruby, SQLite3 and/or Rails.
- you will need Bundler 2. If you need to update Bundler, you can $`gem install bundle`
- you will need to have Node JS installed

## Deployment instructions:
- set up the database: $`bin/rails db:migrate RAILS_ENV=development`
- $`bundle`
- $`rails s`
- visit http://localhost:3000/

## Technologies:
- ruby '2.5.0'
- Ruby on Rails '5.2.3'
- SQLite3
- Materialize for styling.

## To run the test suite:
- $`rake spec`



