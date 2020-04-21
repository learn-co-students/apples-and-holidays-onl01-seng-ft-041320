require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
    holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << "#{supply}"
  holiday_hash[:winter][:new_years] << "#{supply}"
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] <<"#{supply}"
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:"#{season}"] = {:"#{holiday_name}" => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
winter_supplies = []
holiday_hash[:winter][:christmas].each do|value| winter_supplies << value end
holiday_hash[:winter][:new_years].each do|value| winter_supplies << value end
winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  #iterated through the hash and print out the season
  holiday_hash.each do|season, holidays|
      season_holder = ""
      season_holder = season.to_s
      season_holder.capitalize!
      puts "#{season_holder}:"
      #iterate through the holidays
      holidays.each do|holiday, supplies|
          holiday_string = ""
          holiday_string = holiday.to_s
          holiday_string.capitalize!
          #change the string to an array
          holiday_array = []
          holiday_array = holiday_string.split("")
          #loop over the array change "_" to " " and captialize the next letter in the array
          i=0
          while(i<holiday_array.length)
            if holiday_array[i] == "_"
              holiday_array[i+1].capitalize!
              holiday_array[i] = " "
              i+=1
            else
              i+=1
            end
          end
          #join the array together making it a string
          holiday_string = holiday_array.join
          #print the string in the proper format
          puts "  #{holiday_string}: " + "#{supplies.join(", ")}"

          #iterate thorugh array of supplies adding each supply to the holiday list line

      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_hash.collect do |season, holidays|
  holidays.collect do|holiday, supply|
    if supply.include?("BBQ")
      holiday
    end
  end
end.flatten.compact
end
