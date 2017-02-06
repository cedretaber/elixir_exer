defmodule MyList do

  def len(l), do: do_len(l, 0)
  defp do_len([], a), do: a
  defp do_len([_|tail], a), do: do_len(tail, a+1)

  def sum(l), do: do_sum(l, 0)
  defp do_sum([], a), do: a
  defp do_sum([head|tail], a), do: do_sum(tail, head+a)

  def reverse(l), do: do_reverse(l, [])
  defp do_reverse([], a), do: a
  defp do_reverse([head|tail], a), do: do_reverse(tail, [head|a])

  def map(l, f), do: do_map(l, f, [])
  defp do_map([], _, a), do: reverse(a)
  defp do_map([head|tail], f, a), do: do_map(tail, f, [f.(head)|a])

end
