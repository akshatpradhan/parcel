# This file is used by Rack-based servers to start the application.

# Print some information useful in development mode.
a = %w[ RACK  RAILS ].map{|e| "#{e}_ENV"}

if 'development' == ENV[a.last]
  require 'socket'
  2.times do |i|
    s = a.at(i)
    print "#{s}: "; p ENV[s]
  end
  print 'host IP: '; p Socket.ip_address_list.at(external_ip_index = 1).ip_address
end

require ::File.expand_path('../config/environment',  __FILE__)
run Parcel::Application
