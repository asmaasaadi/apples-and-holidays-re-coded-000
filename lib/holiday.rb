
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
holiday_supplies.each do |key,value|
  if key == :winter
  value.each do |k,v|
v<<supply
  end
  end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.each do |key,value|
    if key == :spring
  value.each do |k,v|
    v<<supply
    end
    end
  end
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

holiday_hash.each do |key,value|
puts "#{key.to_s.capitalize}:"
value.each do |k,v|
  a=[]
  a1=[]
  str=""
k1=k.to_s + ":"
a1<<k1.split("_").map(&:capitalize).join(" ")
v.each do |item|
if item != "BBQ"
a<<item.split(" ").map(&:capitalize).join(" ")
elsif item == "BBQ"
  a<<item.split(" ")
  a.join(" ")
end
end
a1.unshift("  ")
str=a1.join
str=str+" "
str1=a.join(", ")
str<<str1
puts str
end
end
end
holiday_supplies = {
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
all_supplies_in_holidays(holiday_supplies)
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_array=[]
holiday_hash.each do |key,value|
value.each do |k,v|
if v.include?("BBQ")
holiday_array<<k
end
end
end
holiday_array
end
