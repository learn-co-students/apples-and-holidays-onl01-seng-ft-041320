require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
   holiday_hash.each do |season,holiday|
     if(:summer)
       holiday.each do |attribute,data|
         if(attribute==:fourth_of_july)
           return data[1]
           #binding.pry
          end
        end
    end
   end
       # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season,holiday|
    if(:winter)
      holiday.each do |attribute,data|
        if(:christmas && :new_years)
          data.push(supply)
        end
        end
    end
    end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's array
end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash.each do |season,holiday|
    if(:spring)
      holiday.each do |attribute,data|
        if(:memorial_day)
          data.push(supply)
          data.push(supply)
        end
        end
    end
    end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
   holiday_hash[season][holiday_name]=supply_array
   holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
  end
end
end








#def all_supplies_in_holidays(holiday_hash)
#  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
#  holiday_hash.each do |season,holiday|
#    puts "#{season.capitalize}:"
#    holiday.each do |holiday,supply|
#      puts "#{holiday.to_s.split(" _ ").map {|x| x.capitalize#}.join("    ")}: #{supply.join(",")}" 
#    end
#    end
#end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season,holidays|
    holidays.map do |holiday,supply|
    holiday if supply.include?("BBQ")
    end
    end.flatten.compact
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







