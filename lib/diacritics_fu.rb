require 'activesupport'

# A tiny class to remove accents (éèê) and other diacritics (ç) from a string.
#
# Author::    Thibaut Barrère  (mailto:thibaut.barrere@gmail.com)
# Copyright:: Copyright (c) 2008 LoGeek EURL
# License::   Distributes under the same terms as Ruby
module DiacriticsFu
  # Remove all accents and other diacritics from the passed string (ie: éphémère will return ephemere)
  def self.escape(str)
    ActiveSupport::Multibyte::Handlers::UTF8Handler.normalize(str,:d).split(//u).reject { |e| e.length > 1 }.join
  end
end
