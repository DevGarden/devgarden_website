# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = CreateAdminService.new.call("andrew@devgarden.io", "changeme", :admin)
puts "Guaranteed user: #{user.email}  :  #{user.role}"

user = CreateAdminService.new.call("christopher@devgarden.io", "Password2016", :admin)
puts "Guaranteed user: #{user.email}  :  #{user.role}"

user = CreateAdminService.new.call("nick@devgarden.io", "changeme", :super_admin)
puts "Guaranteed user: #{user.email}  :  #{user.role}"

user = CreateAdminService.new.call("darren@devgarden.io", "asdf3141", :super_admin)
puts "Guaranteed user: #{user.email}  :  #{user.role}"
