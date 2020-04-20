require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday, supply)
  holiday_supplies[season][holiday] = supply
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.collect do |season, holidays|
     puts "#{season.capitalize}:"
     holidays.collect do |holiday, supply|
       puts "  #{holiday.to_s.split("_").each {|letters| letters.capitalize!}.join(' ')}: #{supply.join(", ")}"
     end
   end
end

def all_holidays_with_bbq(holiday_supplies)
  bbq_holidays = [];
    holiday_supplies.each do |season, holidays|
      holidays.each do |holiday, supplies|
        if supplies.include? "BBQ"
          bbq_holidays << holiday
        end
      end
    end
    bbq_holidays
  end
