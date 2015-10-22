defmodule Insertion do
  def sort(string) do
    sort_points("", String.codepoints(string))
  end

  defp sort_points(accum, [head | tail]) do
    insert_index = Enum.find_index(String.codepoints(accum), fn(sorted_codepoint) ->
      sorted_codepoint > head
    end)

    case {insert_index} do
      {nil} ->
        sort_points(accum <> head, tail)
      _ ->
        sort_points(head <> accum, tail)
    end
  end

  defp sort_points(accum, []) do
    accum
  end

end
