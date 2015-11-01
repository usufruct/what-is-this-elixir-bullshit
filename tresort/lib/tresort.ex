defmodule Insertion do
	def make_it_true do
		true
	end

	def insert_place_true do
		IO.puts Placer
		Placer.place_the_truth
	end

	@spec insort(bitstring) :: bitstring
	def insort(unsorted) do
		sort_codepoints([], String.codepoints(unsorted))
	end

	@spec sort_codepoints(list, list) :: bitstring
	defp sort_codepoints([], []) do
		""
	end

	@spec sort_codepoints(list, list) :: bitstring
	defp sort_codepoints(sorted, [item | items_to_sort]) do
		# iex(1)> "a" < "b"
		# true
		# iex(2)> "b" < "a"
		# false
		insert_point = Enum.find_index(sorted, fn(sorted_item) -> item < sorted_item end)

		Placer.place(sorted, item, insert_point)
		|> sort_codepoints(items_to_sort)
	end

	@spec sort_codepoints(list, list) :: bitstring
	defp sort_codepoints(sorted, []) do
		Enum.join(sorted)
	end
end
