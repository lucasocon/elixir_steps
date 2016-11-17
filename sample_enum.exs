defmodule Sample.Enum do
  import Kernel, except: [length: 1]

  # matching
  #def first(list) when length(list) == 0, do: nil
  def first(list, val \\ nil)
  def first([head | _], _), do: head
  def first([], val), do: val

  # default parameter
  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end

  # private method
  defp trace(string) do
    IO.puts("The value passed was #{string}")
  end

  # recursion
  def map([], _), do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end

  # body recursion
  def length([]), do: 0
  def length([_ | tail]),
    do: 1 + length(tail)

  # tail recursion
  def other_length([_ | tail]),
    do: other_length(tail, 1)
  def other_length([], len),
    do: len
  def other_length([_ | tail], len),
    do: other_length(tail, len + 1)

  def reverse(l),
    do: reverse(l, [])
  def reverse([], reversed),
    do: reversed
  def reverse([head | tail], reversed),
    do: reverse(tail, [head | reversed])

  # map version with tail recursiom
  def other_map([head | tail], f),
    do: other_map(tail, f, [f.(head)])
  def other_map([], _, result),
    do: result
  def other_map([head | tail], f, result),
    do: other_map(tail, f, [f.(head) | result])
end
