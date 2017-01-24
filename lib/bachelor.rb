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
    season_data.each do |character|
      if character["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, season_data|
    season_data.each do |character|
      if character["hometown"] == hometown
        return character["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_machine = []
  data["#{season}"].each do |person|
    age_machine.push(person["age"].to_i)
  end
  average_age = 0
  age_machine.each {|x| average_age += x}

  (average_age.to_f/age_machine.size.to_f).round
end
