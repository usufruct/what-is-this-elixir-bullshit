defmodule InsertionTest do
  use ExUnit.Case
  doctest Insertion

  test "the truth" do
    assert Insertion.make_it_true == true
  end

  test "via placer" do
  	assert Insertion.insert_place_true == true
  end


end
