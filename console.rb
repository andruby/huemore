require 'bundler'
require 'irb'
Bundler.require

@hue = Hue::Client.new
@sonos = Sonos::System.new
IRB.start
