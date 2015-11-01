defmodule InsertionTest do
  use ExUnit.Case
  doctest Insertion

  test "the truth" do
    assert Insertion.make_it_true == true
  end

  test "via placer" do
  	assert Insertion.insert_place_true == true
  end

	test "insort sorts empty string" do
		assert Insertion.insort("") == ""
	end

	test "insort sorts one-letter strings" do
		assert Insertion.insort("a") == "a"
		assert Insertion.insort("b") == "b"
	end

	test "insort sorts two-letter strings" do
		assert Insertion.insort("ab") == "ab"
		assert Insertion.insort("ba") == "ab"
	end

	test "insort sorts three-letter strings" do
		assert Insertion.insort("abc") == "abc"
		assert Insertion.insort("cab") == "abc"
	end

	test "insort sorts duplicates correctly" do
		assert Insertion.insort("abb") == "abb"
		assert Insertion.insort("bab") == "abb"
	end

	test "insort likes Genesis" do
		assert Insertion.insort("abacab") == "aaabbc"
	end
end
