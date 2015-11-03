require "fwmenu/version"
require "enumerize"
require "friendly_id"
require "slim-rails"

module Fwmenu
  ActionView::Base.send :include, MenuHelper
  ActionView::Base.send :include, PlaceHelper
end
