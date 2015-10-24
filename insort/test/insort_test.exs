defmodule InsertionTest do
  use ExUnit.Case
  doctest Insertion

  IO.puts Insertion

  test "sorting" do
    assert Insertion.sort("ab") == "ab"
    assert Insertion.sort("ba") == "ab"

    assert Insertion.sort("abc") == "abc"
    assert Insertion.sort("acb") == "abc"
    assert Insertion.sort("bca") == "abc"

  end
end
