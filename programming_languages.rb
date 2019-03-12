require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      new_hash[language] = type_hash
      new_hash[language][:style] = []
      binding.pry
    end
  end
end

#binding.pry