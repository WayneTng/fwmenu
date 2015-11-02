## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fwmenu', :git => 'https://github.com/brianfwz/fwmenu.git', :branch => "v2"
```
```ruby
gem 'fwcontent', :git => 'https://github.com/brianfwz/fwcontent.git'
```
And then execute:

    $ bundle

    $ rails g fwcontent:install place

    $ rails g fwmenu:install menu

    $ rake db:migrate

Add this lines to routes.rb 

```ruby
resources :articles, only: [:show]
```
```ruby
resources :categories, only: [:show]
```

    $ rake routes

## Usage

Login admin to create positions, categories, articles, menus, menuitems 

Add this line to your layout to provide data to positions. 

```ruby
= render '/get_menu_for'
```
Add this line to place you want to put menu.

```ruby
- if content_for? "menu_position"
  = yield "menu_position"
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