class Foobar

  def self.baz(a)
  	new_array = a.map! {|i| i.to_i}
  	array_plus_two = new_array.map!{|i|i+2}
  	only_even = array_plus_two.select(&:even?)
  	remove_duplicates = only_even.uniq
  	less_than_ten = remove_duplicates.reject! {|i| i > 10}
  	sum_of_all = less_than_ten.inject(0) {|sum, i| sum+i}
  	return sum_of_all
  end
end


