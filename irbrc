require 'rubygems'
{
  'wirble'        => lambda { Wirble.init; Wirble.colorize unless Config::CONFIG['host_os'] == 'mswin32'; },
  # wirble already requires irb/completion and pp. Also adds ri
  'irb/completion'=> nil,
  'pp'            => nil,
  'map_by_method' => nil,
  'what_methods'  => nil,
}.each do |name, block|
  begin
    require name
    block.call unless block.nil?
  rescue LoadError => err
    warn "Error loading #{name}: #{err}"
  end
end

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE

# print SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  require 'activerecord'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  ActiveRecord::Base.clear_active_connections!
end

# Copy to OS X clipboard
def pbcopy(string)
  `echo "#{string}" | pbcopy`
  string
end
