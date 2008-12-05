module DiacriticsFu
  def self.escape(str)
    ActiveSupport::Multibyte::Handlers::UTF8Handler.normalize(str,:d).split(//u).reject { |e| e.length > 1 }.join
  end
end