module DiacriticsFu
  def self.escape(str)
    ActiveSupport::Multibyte::Chars.new(str).normalize(:d).split(//u).reject { |e| e.length > 1 }.join
  end
end