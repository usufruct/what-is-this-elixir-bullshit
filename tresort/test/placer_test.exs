defmodule PlacerTest do
	use ExUnit.Case
	doctest Placer

	test "the other truth" do
		assert Placer.place_the_truth == true
	end

	test "places an item into a list at the end if index is nil" do
		assert Placer.place([], "a", nil) == ["a"]
	end
end