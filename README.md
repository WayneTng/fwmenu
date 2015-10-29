## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fwmenu', :git => 'https://github.com/brianfwz/fwmenu.git'
```
And then execute:

    $ bundle

    $ rails g fwmenu:install model_name

    $ rake db:migrate

Add this line to routes.rb 

```ruby
resources :articles, only: [:show]
```

    $ rake routes

## Usage

Login admin to create article and menu 

Support :

		Active Admin
		Rails Admin

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brianfwz/fwcontent. 

