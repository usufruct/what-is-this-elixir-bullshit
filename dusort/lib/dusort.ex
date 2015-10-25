defmodule Dusort do
	def make_it_true do
		true
	end

	@spec insort_string(bitstring) :: bitstring
	def insort_string(unsorted) do
		insort_codepoints([], String.codepoints(unsorted))
	end

	@spec insort_codepoints(list, list) :: bitstring
	defp insort_codepoints([], [insert | []]) do
		insert
	end

	defp insort_codepoints(sorted, [insert | unsorted]) do
		index_first_greater = Enum.find_index(sorted, fn(sortpoint) ->
			# iex(1)> "a" < "b"
			# true
			# iex(2)> "b" < "a"
			# false
			insert < sortpoint
		end)

		case index_first_greater do
			nil ->
				# nothing in sorted has a 'higher' (further right) value than insert
				insort_codepoints(sorted ++ [insert], unsorted)
			0 ->
				# first element in sorted is 'higher' sort than insert
				insort_codepoints([insert] ++ sorted, unsorted)
			x when x > 0 ->
				# insert goes just before the first sorted item with a 'higher sort'
				prefix = Enum.slice(sorted, 0..index_first_greater - 1)
				suffix = Enum.slice(sorted, index_first_greater..length sorted)

				insort_codepoints(prefix ++ [insert] ++ suffix, unsorted)
		end
	end

	defp insort_codepoints(sorted, []) do
		Enum.join(sorted)
	end
end
