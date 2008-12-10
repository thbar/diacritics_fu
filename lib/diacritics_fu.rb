require 'active_support'
require 'active_support/version'

# hum - I love that kind of things
if ActiveSupport::VERSION::STRING >= "2.2.0"
  if $KCODE == 'UTF8'
    require File.dirname(__FILE__) + '/diacritics_fu/new_escaper_kcode_utf8'
  else
    require File.dirname(__FILE__) + '/diacritics_fu/new_escaper'
  end
else
  require File.dirname(__FILE__) + '/diacritics_fu/old_escaper'
end