defmodule Insertion do
  def sort(string) do
    sort_points("", String.codepoints(string))
  end

  defp sort_points("", [head | tail]) do
    sort_points(head, tail)
  end

  defp sort_points(sorted, [head | tail]) do
    split_point = String.codepoints(sorted)
    |> Enum.reverse
    |> Enum.find_index(fn(codepoint) -> codepoint < head end)
    |> (fn(index) -> index || String.length(sorted) end).()
    |> (fn(index) -> String.length(sorted) - index end).()

    {front, back} = String.split_at(sorted, split_point)

    sort_points(front <> head <> back, tail)
  end

  defp sort_points(sorted, []) do
    sorted
  end

end
