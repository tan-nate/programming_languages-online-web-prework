require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
=begin
def reformat1(languages)
  new_hash = {}
  
  languages.each do |key, value|
    value.each do |key, value|
      new_hash[key] = {}
    end
  end
  
  new_hash
  #binding.pry
end

def reformat2(languages)
  #binding.pry
  new_hash = {}
  reformat1(languages).each do |key, value|
    new_hash[key] = value
  end
  
  languages.each do |key, value|
  #binding.pry
    value.each do |key1, value1|
    #binding.pry
      new_hash.each do|key2, value2|
      #binding.pry
        new_hash[key2] = value1
      end
    end
  end
  #binding.pry
end

  do |key, value|
    #binding.pry
    value.each do |key1, value1|
      #binding.pry
      reformat1(languages).each do |key2, value2|
        #binding.pry
        reformat1(languages)[key2] = value1
        #binding.pry
      end
    end
    #binding.pry
  end
  #binding.pry
  new_hash[1].each do |key, value|
    new_hash[0][key] = value
  end
  binding.pry
  new_hash[0]
  #binding.pry

def reformat3(languages)
  reformat2(languages).each do |key1, value1|
    styles = []
    
    languages.each do |key2, value2|
      if value2.keys.include?(key1)
        styles << key2
      end
      #binding.pry
    end
      
    reformat2(languages)[key1][:style] = [styles].flatten
    #binding.pry
  end
end
=end

def reformat_languages(languages)
  new_hash = {}
  style_array = []
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      new_hash[language] = type_hash
      style_array << style
      new_hash[language][:style] = style_array
    end
  end
  
=begin
  styles = []
    
  languages.each do |style, language_hash|
    
    end
    binding.pry
  end
    
  reformat2(languages)[key1][:style] = [styles].flatten
  #binding.pry
  new_hash
=end
  new_hash
  binding.pry
end

binding.pry