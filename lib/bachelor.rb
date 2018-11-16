require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |stats|
    if stats["status"].downcase == "winner"
      return stats["name"].split(" ").first
    end #stats if
  end #data each
end

def get_contestant_name(data, occupation)
  data.each do |season, stats|
    stats.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end #contest if
    end #season each
  end #data end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, stats|
    stats.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        counter += 1
      end #stats if
    end #stats end
  end #data each
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, stats|
    stats.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end #cont if
    end #stats each
  end #data each
end

def get_average_age_for_season(data, season)
  ages = 0
  num = 0
  data[season].each do |contestant_info|
    ages += (contestant_info["age"]).to_i
    num += 1
  end #data each
  (ages / num.to_f).round(0)
end
