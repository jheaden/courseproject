def sort arr
rec_sort arr, []
end

def rec_sort unsorted, sorted
		
		#an empty array is already sorted
		if unsorted.length <= 0
		return sorted
		end

# So if we got here, then it means we still
# have work to do.
smallest = unsorted.pop #grab 1 element
still_unsorted = [] #make array

unsorted.each do |this|
		if this < smallest
		still_unsorted.push smallest
		smallest = this
		else
		still_unsorted.push this
		end #endif
end

# Now "smallest" really does point to the
# smallest element that "unsorted" contained,
# and all the rest of it is in "still_unsorted".
sorted.push smallest
rec_sort still_unsorted, sorted
end

puts(sort(['cat','dog','nine','ape','zzyz','bear', 'grape']))