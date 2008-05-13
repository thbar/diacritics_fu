require File.dirname(__FILE__) + '/../spec_helper'
require 'diacritics_fu'

describe "DiacriticsFu.escape" do
  
  it "should remove the accents with grace" do
    DiacriticsFu::escape("éphémère").should eql("ephemere")
    DiacriticsFu::escape("éêèïîù").should eql("eeeiiu")
  end

  it "should work" do
    DiacriticsFu::escape("räksmörgås").should eql("raksmorgas")  
  end

  KNOWN_DIACRITICS = { "a" => "àäâ", "e" => "éèêë", "i" => "îï", "o" => "ôö", "u" => "üû", "c" => "ç",
                       "I" => "ÏÎ",  "E" => "ÊË", "n" => "ñ", "O" => "ÔÖ", "Y" => "Ÿ", "y" => "ÿ", "N" => "Ñ"  }
  
  KNOWN_DIACRITICS.each do |expected_replacement,originals|
    it "should transform any of '#{originals}' into '#{expected_replacement}'" do
      originals.split(//).each do |original|
        DiacriticsFu.escape(original).should eql(expected_replacement)
      end
    end
  end
  
end
