defmodule PlacerTest do
	use ExUnit.Case
	doctest Placer

	test "the other truth" do
		assert Placer.place_the_truth == true
	end

	test "places an item into a list at the end if index is nil" do
		assert Placer.place([], "a", nil) == ["a"]
		assert Placer.place([], "b", nil) == ["b"]
		assert Placer.place(["f"], "a", nil) == ["f", "a"]
	end

	test "places an item at index 0" do
		assert Placer.place([], "a", 0) == ["a"]
		assert Placer.place(["c"], "a", 0) == ["a", "c"]
	end

	test "places items anywhere in the list" do
		assert Placer.place(["a", "b", "c"], "z", 1) == ["a", "z", "b", "c"]
		assert Placer.place(["a", "b", "c"], "z", 2) == ["a", "b", "z", "c"]
	end
end