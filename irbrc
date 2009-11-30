require 'rubygems'
begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end

require 'irb/completion'
IRB.conf[:AUTO_INDENT] = true
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
