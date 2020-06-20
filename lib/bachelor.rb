require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant_data|
    if contestant_data["status"].downcase == "winner"
      return contestant_data["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestant_count = 0
  data.each do |season, contestants|
    contestants.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        contestant_count += 1
      end
    end
  end
  contestant_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  contestant_count = 0
  data[season].each do |contestant_data|
      contestant_count += 1
      age_sum += contestant_data["age"].to_f
      puts "age: #{contestant_data["age"]}, sum: #{age_sum}, count: #{contestant_count}"
    end
  average_age = age_sum / contestant_count
  return average_age.round
end
