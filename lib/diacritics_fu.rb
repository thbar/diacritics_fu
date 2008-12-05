require 'active_support'
require 'active_support/version'

if ActiveSupport::VERSION::STRING >= "2.2.0"
  require File.dirname(__FILE__) + '/diacritics_fu/new_escaper'
else
  require File.dirname(__FILE__) + '/diacritics_fu/old_escaper'
end
