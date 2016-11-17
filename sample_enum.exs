defmodule Sample.Enum do

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
end
