require 'pp'
require 'pry-byebug'

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
  CA: ['Sacramento', 'Los Angeles', 'Oakland'],
  NY: ['New York City', 'Albany'],
  MI: ['Detroit', 'Lansing'],
  TX: ['San Antonio', 'Houston'],
  IL: ['Chicago', 'Springfield']
}

# pp cities

def describe_state(state_code)

  @statecode = state_code.to_sym
  @selected_state = @cities[@statecode]
  n = @selected_state.length
  if @selected_state
    puts "#{@statecode} is for #{@states[@statecode]}. It has #{@selected_state.count} major cities: #{@selected_state[0..n-1].join(', ')}"
  else
    puts "State doesn't exist"
  end

end

describe_state('CA')

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
  if @taxes.include?(@statecode)
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

# puts find_state_for_city('Portland')

