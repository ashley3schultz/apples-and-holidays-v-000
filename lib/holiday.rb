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
  hol = []
  holiday_hash.each {|s, h, i|
    holiday = h.to_s.split("_")
    holiday.each {|word| hol << word.capitalize}
    s = se.capitalize
    h = hol.join(" ")
    i = it.to_s
    puts "#{s}:"
    puts "  #{h}: #{i}"}
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







