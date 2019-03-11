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

def reformat1(languages)
  new_hash = {}
  
  languages.each do |key, value|
    value.each do |key, value|
      new_hash[key] = {}
    end
  end
  
  new_hash
end

def reformat2(languages)
  new_hash = languages.collect do |key, value|
    value.each do |key1, value1|
      reformat1(languages).each do |key2, value2|
        reformat1(languages)[key2] = value1
      end
    end
  end
  
  new_hash[1].each do |key, value|
    new_hash[0][key] = value
  end
  
  new_hash[0]
end

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

def reformat_languages(languages)
  reformat3(languages)
end

binding.pry