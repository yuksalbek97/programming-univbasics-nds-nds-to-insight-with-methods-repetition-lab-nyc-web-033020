$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require "pry"

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end


def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

  
def list_of_directors(source)
  # Write this implementa
  list_directors = []
  row_index = 0
  while row_index < source.length do
    director = source[row_index][:name]
    list_directors << director
    row_index += 1
  end
   
  
  #binding.pry
  list_directors
end

def total_gross(source)
  directors = list_of_directors(source)
  director_total = directors_totals(source)
  
  total = 0
  index = 0 
   while index < directors.length do
     total += director_total[directors[index]]
     index += 1
    end
    total
  end
     
  
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  

  
  
  



