defmodule Insertion do
  def sort(string) do
    sort_points([], String.codepoints(string))
  end

  defp sort_points(accum, [head, tail]) do
    IO.puts "hi"
    IO.puts head
    sort_points(accum, tail)
  end

  defp sort_points(x, y) do
    #IO.puts x
    IO.puts y
  end

end
