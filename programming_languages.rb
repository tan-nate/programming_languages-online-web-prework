require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_hash|
    style_array = []
    binding.pry
    language_hash.each do |language, type_hash|
      new_hash[language] = type_hash
      
      unless style_array.include?(style)
        style_array << style
      end
      
      new_hash[language][:style] = style_array
    end
  end
end

binding.pry