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

	defp insort_codepoints([], [insert | unsorted]) do
		Enum.join([unsorted, insert])
	end
end
