module DiacriticsFu
  def self.escape(str)
    ActiveSupport::Multibyte::Chars.new(str).normalize(:d).split(//u).reject { |e| e.wrapped_string[0] > 128 }.join
  end
end