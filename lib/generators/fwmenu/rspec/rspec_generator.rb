require 'rails/generators/migration'
require 'bundler'

module Fwmenu
  module Generators
    class RspecGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      def copy_initializer_file
        copy_file "factories/category.rb", "spec/factories/category.rb"
        copy_file "factories/article.rb", "spec/factories/article.rb"
        copy_file "models/category_spec.rb", "spec/models/category_spec.rb"
        copy_file "models/article_spec.rb", "spec/models/article_spec.rb"
      end
    end
  end
end