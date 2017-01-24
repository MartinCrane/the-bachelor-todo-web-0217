require "pry"

def get_first_name_of_season_winner(data, season)
  data["#{season}"].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_data|
    season_data.each do |character|

      if character["occupation"] == occupation
        return character["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, season_data|
    season_data.each do |character, character_data|
      
      if character["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
