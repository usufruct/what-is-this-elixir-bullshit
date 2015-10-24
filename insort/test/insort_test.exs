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

    assert Insertion.sort("aabc") == "aabc"
    assert Insertion.sort("abac") == "aabc"

    assert Insertion.sort("abacab") == "aaabbc"
  end
end
