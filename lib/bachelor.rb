require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |info|
    info.each do |person, name|
      if info["name"] == name
          return info["name"].split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,info|
    info.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestant_age = 0
  count = 0
  data[season].each do |info|
      contestant_age += (info["age"]).to_i
      count += 1
    end
  average_age = (contestant_age/count.to_f).round(0)
  return average_age
end
