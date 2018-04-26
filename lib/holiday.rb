require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash[:summer][:fourth_of_july][1]
end



def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each {|s, holiday|
  holiday.each {|h, e| 
    if s == :winter
      e << supply
    end}}
end



def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash.each {|s, holiday|
  holiday.each {|h, e| 
    if h == :memorial_day
      e << supply
    end}}
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {|season, holiday|
    holiday.each {|holiday, item|
    holiday = holiday.to_s
    holi = holiday.split
      holi.collect {|word| word.capitalize
      binding.pry
    s = season.capitalize
    h = word.join(" ")
    i = item.join(", ")
    puts "#{s}:"
      puts "  #{h}: #{i}"}}}
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







