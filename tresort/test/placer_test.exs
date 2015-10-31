defmodule PlacerTest do
	use ExUnit.Case
	doctest Placer

	test "the other truth" do
		assert Placer.place_the_truth == true
	end

	test "places an item into a list at the end if index is nil" do
		assert Placer.place([], "a", nil) == ["a"]
		assert Placer.place([], "b", nil) == ["b"]
	end

	test "places an item at index 0" do
		assert Placer.place([], "a", 0) == ["a"]
		assert Placer.place(["c"], "a", 0) == ["a", "c"]
	end

	
end