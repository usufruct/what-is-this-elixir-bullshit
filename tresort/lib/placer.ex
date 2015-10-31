defmodule Placer do
	def place_the_truth do
		true
	end

	def place(list, item, nil) do
		list ++ [item]
	end

	def place(list, item, position) do
		List.insert_at(list, position, item)
	end
end