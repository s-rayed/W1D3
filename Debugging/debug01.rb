list = {'yvr' => 'Vancouver', 'yba' => 'Banff', 'yyz' => 'Toronto', 'yxx' => 'Abbotsford', 'ybw' => 'Calgary'}

# Why is it returning nil instead of first element of the list above
p list['yvr']

# This is returning nil because list[0] is asking to return the first index value in an ARRAY. but list is actually a hash. so to get the first element in a hash we can just pass in the key and get the value