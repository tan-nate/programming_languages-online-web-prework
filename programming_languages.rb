require 'pry'
#=begin
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
#=end
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
  languages1 = languages
  #binding.pry
  new_hash = languages1.collect do |key, value|
    #binding.pry
    value.each do |key1, value1|
      #binding.pry
      reformat1(languages1).each do |key2, value2|
        #binding.pry
        reformat1(languages1)[key2] = value1
        #binding.pry
      end
    end
    #binding.pry
  end
  binding.pry
  new_hash[1].each do |key, value|
    new_hash[0][key] = value
  end
  binding.pry
  new_hash[0]
  binding.pry
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