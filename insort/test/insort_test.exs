defmodule InsertionTest do
  use ExUnit.Case
  doctest Insertion

  IO.puts Insertion

  test "sorting" do
    assert Insertion.sort("ab") == "ab"
    assert Insertion.sort("ba") == "ab"
  end
end
