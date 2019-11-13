# require modules here
require "yaml"


def load_library(file_path)

new_meaning = {}
emoticons = YAML.load_file(file_path)

emoticons.each do |key, value|
    if new_meaning["get_meaning"] == nil
      new_meaning["get_meaning"] = {}
    end
    if new_meaning["get_emoticon"] == nil
      new_meaning["get_emoticon"] = {}
    end
    new_meaning["get_meaning"][value[1]] = key
    new_meaning["get_emoticon"][value[0]] = value[1]

end

new_meaning
end

def get_japanese_emoticon(file_path, emoticon)
 meanings = load_library(file_path)


  if !meanings["get_emoticon"].include?(emoticon)
    return "Sorry, that emoticon was not found"
  else
    
    puts meanings["get_emoticon"][emoticon]
    
  end
  
  
  
end

def get_english_meaning
  # code goes here
end