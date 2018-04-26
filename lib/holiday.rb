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
  holiday_hash.each {|sk, holiday_hash|
  holiday_hash.each {|hk, item_array|
    h = hk.to_s.split("_")
    h_array = []
    h.each {|h_word| h_array << h_word.capitalize}
    season = sk.capitalize.to_s
    holiday = h_array.to_s
    items = item_array.capitalize
binding.pry
    
    puts "#{season}:"
    puts "  #{holiday}: #{items}"}}
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







