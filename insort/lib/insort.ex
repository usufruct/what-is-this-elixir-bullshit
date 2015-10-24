defmodule Insertion do
  def sort(string) do
    sort_points("", String.codepoints(string))
  end

  defp sort_points("", [head | tail]) do
    sort_points(head, tail)
  end

  defp sort_points(sorted, [head | tail]) do
    more_sorted = Enum.reduce(String.codepoints(sorted), "", fn(codepoint, acc) ->
      case {codepoint > head} do
        {true} ->
          acc <> head <> codepoint
        {false} ->
          acc <> codepoint
      end
    end)

    if String.length(more_sorted) == String.length(sorted) do
      sort_points(more_sorted <> head, tail)
    else
      sort_points(more_sorted, tail)
    end    
  end

  defp sort_points(sorted, []) do
    sorted
  end

end
