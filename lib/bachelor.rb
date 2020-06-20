require "pry"

def get_first_name_of_season_winner(data, season)
  winner_first_name = ""
  data[season].each do |contestant_info|
    if contestant_info["status"] == "Winner"
      winner_first_name = contestant_info["name"].split(" ").first
    end 
  end 
  winner_first_name
end

def get_contestant_name(data, occupation)
  contestant_with_occupation = ""
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_info|
      if contestant_info["occupation"] == occupation 
        contestant_with_occupation = contestant_info["name"]
      end
    end
  end
  contestant_with_occupation
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        count += 1 
      end 
    end
  end 
  count
end

def get_occupation(data, hometown)
  data.collect do |season, contestant_array|
    contestant_array.collect do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  array_of_ages = []
  data[season].each do |contestant_info|
    array_of_ages << contestant_info["age"].to_f
  end 
  
  total = 0.0
  array_of_ages.each do |n|
    total += n
  end
  (total/array_of_ages.size).round
end
