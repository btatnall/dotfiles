require 'rubygems'
{
  # wirble already requires irb/completion and pp. Also adds ri
  'wirble'        => lambda { Wirble.init; Wirble.colorize unless Config::CONFIG['host_os'] == 'mswin32'; },
  'hirb'          => lambda { Hirb::View.enable },
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
IRB.conf[:PROMPT_MODE] = :SIMPLE # set by wirble

prompt_defaults = {
  :PROMPT_S => nil,
  :PROMPT_C => "?> ",
  :RETURN => "=> %s\n"
}

def rails2?
  ENV.include?('RAILS_ENV')
end

def rails3?
  !!defined?(Rails)
end

def rails?
  rails2? || rails3?
end

if rails2?
   unless Object.const_defined?('RAILS_DEFAULT_LOGGER')
     require 'logger'
     Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
   end

  require 'active_record'
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  # Display the RAILS ENV in the prompt: [Development]>>
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_N => "[#{ENV["RAILS_ENV"].capitalize}]>> ",
    :PROMPT_I => "[#{ENV["RAILS_ENV"].capitalize}]>> ",
  }
elsif rails3?
  require 'logger'
  Rails.logger=Logger.new(STDOUT)
  ActiveRecord::Base.logger = Rails.logger

  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_N => "[#{Rails.env.capitalize}]>> ",
    :PROMPT_I => "[#{Rails.env.capitalize}]>> ",
  }
end

if rails?
  IRB.conf[:PROMPT][:RAILS].merge(prompt_defaults)
  IRB.conf[:PROMPT_MODE] = :RAILS
end


# Copy to OS X clipboard
def pbcopy(string)
  `echo "#{string}" | pbcopy`
  string
end
