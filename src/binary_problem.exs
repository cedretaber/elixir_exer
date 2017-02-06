defmodule BinaryProblems do
  def calculate(expr) do
    _calc_parse(expr, [[]], true)
  end

  defp _calc_parse([], terms, _), do: _calc(terms)
  defp _calc_parse([?\s | tl], terms, true), do: _calc_parse(tl, terms, true)
  defp _calc_parse([?\s | tl], terms, false), do: _calc_parse(tl, [[] | terms], true)
  defp _calc_parse([c | tl], [h | terms], _), do: _calc_parse(tl, [[c | h] | terms], false)

  defp _calc([r, [op], l]), do: _operate(_parse_num(l), op, _parse_num(r))

  defp _parse_num([]), do: 0
  defp _parse_num([h | tl]), do: (h - ?0) + 10 * _parse_num(tl)

  defp _operate(l, op, r) do
    case op do
      ?+ -> l + r
      ?- -> l - r
      ?* -> l * r
      ?/ -> l / r
    end
  end
end
