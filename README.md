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

Add this line to your layout to provide content to positions. 

```ruby
= render '/get_{model_name}_for'
```
Add this line to place you want to put menu.

```ruby
- if content_for? "your_position"
  = yield "your_position"
```

Support :

		Active Admin
		Rails Admin

## Contributing

1. Fork it ( https://github.com/brianfwz/fwmenu/fork   )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License
Fwmenu is Copyright © 2015. It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.