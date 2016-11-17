defmodule Sample.Utils do
  # First class functions
  # Enum.map([1,2,3,4], &Sample.Utils.square/1)
  # Enum.reduce([1,2,3,4], 0, &Sample.Utils.sum/2)

  # Lambda style
  # Enum.map([1,2,3,4], fn(x) -> x * x end)
  # Enum.reduce([1,2,3,4], 0, fn(x, acc) -> acc + x end)

  # Capture style
  # Enum.map([1,2,3,4], &(&1 * &1))
  # Enum.reduce([1,2,3,4], 0, &(&2 + &1))
  def square(val), do: val * val

  def sum(a, b), do: a + b

  # Anonymous function
  # Sample.Utils.custom_func(1, fn(x) -> IO.puts(x) end)
  def custom_func(a, f) do
    f.(a)
  end
end
