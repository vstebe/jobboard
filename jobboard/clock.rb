require 'clockwork'

require './config/boot'
require './config/environment'

require 'clockwork'
module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  # handler receives the time when job is prepared to run in the 2nd argument
  # handler do |job, time|
  #   puts "Running #{job}, at #{time}"
  # end

  every(5.minutes,
  'Send List') {
  `rake offers:send_list`
}

end
