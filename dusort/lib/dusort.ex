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
			# iex(1)> "a" > "b"
			# false
			# iex(2)> "b" > "a"
			# true			
			insert < sortpoint
		end)


		IO.puts "sorted #{sorted}"
		IO.puts "insert #{insert}"
		IO.puts "index #{index_first_greater}"
		case index_first_greater do
			nil ->
				insort_codepoints(sorted ++ [insert], unsorted)
			0 ->
				insort_codepoints([insert] ++ sorted, unsorted)
		end
	end

	defp insort_codepoints(sorted, []) do
		Enum.join(sorted)
	end
end
