require 'rubygems'

# allow activation of a specific version of activesupport for testing
gem 'activesupport', "= #{ENV['DIACRITICS_FU_ACTIVESUPPORT_VERSION']}" if ENV['DIACRITICS_FU_ACTIVESUPPORT_VERSION']

require File.dirname(__FILE__) + '/spec_helper'
require 'active_support'

describe DiacriticsFu do
  
  before(:all) do
    puts "Testing using ActiveSupport version #{ActiveSupport::VERSION::STRING}"
  end
  
  it "should remove the accents with grace" do
    DiacriticsFu::escape("éphémère").should == "ephemere"
    DiacriticsFu::escape("éêèïîù").should eql("eeeiiu")
  end

  it "should remove more exotic accents" do
    DiacriticsFu::escape("räksmörgås").should eql("raksmorgas")  
  end
  
  KNOWN_DIACRITICS = { "a" => "àäâ", "e" => "éèêë", "i" => "îï", "o" => "ôö", "u" => "üû", "c" => "ç",
                       "I" => "ÏÎ",  "E" => "ÊË", "n" => "ñ", "O" => "ÔÖ", "Y" => "Ÿ", "y" => "ÿ", "N" => "Ñ"  }
  
  KNOWN_DIACRITICS.each do |expected_replacement,originals|
    it "should transform any of '#{originals}' into '#{expected_replacement}'" do
      originals.each_char do |original|
        DiacriticsFu.escape(original).should eql(expected_replacement)
      end
    end
  end
  
end
