require_relative './config/environment.rb'

# if ActiveRecord::Migrator.needs_migration?
#     raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end

use Rack::MethodOverride
use CharacterController
use SessionsController
use StatsController
use UserController
run ApplicationController