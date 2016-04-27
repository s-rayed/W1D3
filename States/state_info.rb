require 'pp'
require 'pry'
@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan',
}

@states[:TX] = 'Texas'
@states[:IL] = 'Illinois'

# all_states = states.each do |k,v| puts "State-code: #{k}, State-name: #{v}" end

# puts all_states

@cities = {
  OR: ['Portland', 'Salem'],
  FL: ['Orlando', 'Talahassee'],
  CA: ['Sacramento', 'Los Angeles'],
  NY: ['New York City', 'Albany'],
  MI: ['Detroit', 'Lansing'],
  TX: ['San Antonio', 'Houston'],
  IL: ['Chicago', 'Springfield']
}

# pp cities

def describe_state(state_code)

  @cities.each do |k,v|
  end
  if @states.include?(state_code)
    puts "#{state_code} is for #{@states[state_code]}. It has 2 major cities: #{@cities[state_code][0]}, #{@cities[state_code][1]}"
  end


end

# puts describe_state(:FL)

@taxes = {
  OR: 0.06,
  FL: 0.05,
  CA: 0.08,
  NY: 0.1,
  MI: 0.07,
  TX: 0.09,
  IL: 0.12
}

def calculate_tax(state_code, amount)

  @taxes.each {|k,v|}
  if @taxes.include?(state_code)
    puts "The tax in #{@states[state_code]} for the amount given would be $#{(amount * @taxes[state_code]).round(2)}"
  end

end

# puts calculate_tax(:IL, 222)

def find_state_for_city(city)
  @cities.detect do |k,v|
    if v.include?(city)
      puts "#{city} is in #{k.to_s} (#{@states[k]})"
    end
  end
end

puts find_state_for_city('Portland')

