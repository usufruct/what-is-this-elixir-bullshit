defmodule DusortTest do
  use ExUnit.Case
  doctest Dusort

  test "the truth" do
    assert Dusort.make_it_true == true
  end

  test "insort_string" do
  	assert Dusort.insort_string("a") == "a"
  	assert Dusort.insort_string("b") == "b"

  	assert Dusort.insort_string("ba") == "ab"
  	assert Dusort.insort_string("ca") == "ac"
  end
end
