require 'pry'


def second_supply_for_fourth_of_july(holiday_hash)
  four = holiday_hash[:summer]
    return four[:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday = holiday_hash[:winter]
  holiday.each do |k, v|
    v << supply
  end
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  spring_time = holiday_hash[:spring]
  spring_time[:memorial_day] << supply
  return holiday_hash


  #return holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash.each do |k, v|
  if(k == season)
    v[holiday_name] = supply_array
  end
end
return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |k, v|
    if(k == :winter)
      return holiday_hash[:winter].values.join(' ')
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  fixed_array = []
  alpha = 'abcdefghijklmnopqrstuvwxyz'
  holiday_hash.each do |k, v|
    puts k.to_s.capitalize + ":"
    v.each do |key, value|
      if(key.to_s.include?("_"))
        array = key.to_s.split('')
        array.each do |ele|
          if alpha.include?(ele)
            fixed_array << ele
          else
            fixed_array << " "
          end
        end
        new_key = fixed_array.join('')
        fixed_array = []
        new_key_array = new_key.split(' ')
        new_key_array.each_with_index do |ele ,i|
            new_key_array[i] = new_key_array[i].capitalize
          
        end
        new_key = new_key_array.join(' ')
        puts "  " + new_key + ": " + value.join(', ')
    else
      puts "  " + key.to_s.capitalize + ": " + value.join(', ')
    end
    end
  end
 end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.each do |k, v|
    v.each do |key, value|
      if(value.include?("BBQ"))
        return key
      end
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  solution = []
  holiday_hash.each do |k, v|
    v.each do |key, value|
      if(value.include?("BBQ"))
         solution << key
      end
    end
  end
solution
end

holiday_hash = {
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







