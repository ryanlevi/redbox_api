require 'HTTParty'

Dir[File.dirname(__FILE__) + '/redbox/*.rb'].each do |file|
  require file
end