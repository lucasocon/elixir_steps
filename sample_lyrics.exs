defmodule Sample.Lyrics do
  def get_sentence(2) do
    "This is the last \n"
  end

  def get_sentence(1) do
    "This is the first\n"
  end

  def get_sentence(number) do
    "This is #{number} \n"
  end

  def lyrics(), do: lyrics(100..1)
  def lyrics(first..last) when first <= last,
    do: get_sentence(first)

  def lyrics(first..last),
    do: get_sentence(first) <> lyrics(first - 1..last)
end
