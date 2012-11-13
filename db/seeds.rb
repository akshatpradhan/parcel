# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

u = User.new
u.first_name = "Marcel"
u.email = "florencio_halvorson@breitenbergrunolfsdottir.com"
u.save!

Garden.create! title: "Marcels Parcel", address: "10419 Muller Underpass Boston MA 02116", description: "This one is actually a rooftop garden. We have a deck with lots of space and open access for whoever would like to grow herbs or small plants. The sunlight is amazing and will come down very well.", user: u

u = User.new
u.first_name = "Lily"
u.email = "lily@gutmannwisoky.net"
u.save!

Garden.create! title: "Lilys Garden in the Cambridge Area", address: "951 Angelica Shores Boston MA 02116", description: "Private Garden with a great view. You get to use the tools, but make sure to put things away. I have some seeds in the back yard that you can use. I got them from whole foods. The water pipe works very well, but make sure to screw the hose in.", user: u

u = User.new
u.first_name = "Mary"
u.email = "mary@skileskirlin.info"
u.save!

Garden.create! title: "Merry Growers", address: "538 Buckridge Harbors", description: "We want fellow growers who want to experiment with the more interesting side of gardening. As such, we will not frown upon growing of questionable substances. You will have a parcel to yourself. We would like you to keep it as clean as possible. There is water in the back, but make sure to turn the knob all the way closed. We do not want to waste water. If you are into hydroponics, we would like you to work with us on our garden as well.", user: u
