defmodule Placer do
	def place_the_truth do
		true
	end

	def place(list, item, 0) do
		[item] ++ list
	end

	def place(list, item, position) do
		[item]
	end
end