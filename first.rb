def counter(v_in)
  first_symbol = v_in[0..0]
  first_group = v_in.scan(/#{first_symbol}+/)
  v_out = ""
  other_group = v_in.split(/#{first_symbol}+/)
  first_group.each_index{|i| v_out += (first_group[i].size.to_s + first_symbol) + (other_group[i+1].nil? ? "" : counter(other_group[i+1]))}
  return v_out
end

a = ARGV[0].nil? ? "1" : ARGV[0]
a = counter(a)
puts a