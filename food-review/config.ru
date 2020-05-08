require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

require 'sass/plugin/rack'

use Sass::Plugin::Rack
use SessionsController
use Rack::MethodOverride
use ReviewsController
use UsersController
run ApplicationController


