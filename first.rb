def counter(v_in)
  first_symbol=v_in[0..0]
  first_group = v_in.scan(/^#{first_symbol}+/)[0]
  v_out = first_group.size.to_s + first_symbol
  other_group = v_in.sub(/^#{first_symbol}+/){}
  v_out += counter(other_group) unless other_group.empty?
  return v_out
end

a = ARGV[0].nil? ? "1" : ARGV[0]
puts counter(a)