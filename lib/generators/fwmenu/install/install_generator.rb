require 'rails/generators/migration'
require 'bundler'

module Fwmenu
  module Generators
    class InstallGenerator < ::Rails::Generators::NamedBase
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the migrations"

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        migration_template "create_menus.rb", "db/migrate/create_#{file_name}s.rb"
        migration_template "create_menu_items.rb", "db/migrate/create_#{file_name}_items.rb"
        migration_template "add_reference_menu_items_to_menu_item.rb", "db/migrate/add_reference_#{file_name}_items_to_#{file_name}_item.rb"
      end

      def copy_initializer_file
        active = Bundler.load.specs.map { |spec| spec.name }

        template "menu.rb", "app/models/#{file_name}.rb"
        copy_file "_get_menu_for.html.erb", "app/views/_get_#{file_name}_for.html.erb"
        template "menu_helper.rb", "app/helpers/#{file_name}_helper.rb"
        
        if active.include? "activeadmin"
          template "activeadmin/model/menu_item.rb", "app/models/#{file_name}_item.rb"
          template "activeadmin/menu.rb", "app/admin/#{file_name}.rb"
          template "activeadmin/menu_item.rb", "app/admin/#{file_name}_item.rb"
        else
          template "menu_item.rb", "app/models/#{file_name}_item.rb"
        end
      end
    end
  end
end