originNumber = {query}

converted = {:bin => originNumber.to_s(2), :dec => originNumber.to_s(10), :oct => originNumber.to_s(8), :hex => originNumber.to_s(16)}.map do |k, v|
  """
    <item uid=\"#{k}\" arg=\"#{v}\">
      <title>#{k}: #{v}</title>
      <subtitle>select to copy to clipboard</subtitle>
      <icon type=\"fileicon\">/Applications/Calculator.app</icon>
    </item>
  """
end

result =
"""
<?xml version=\"1.0\"?>
<items>
  #{converted.join}
</items>
"""

puts result
