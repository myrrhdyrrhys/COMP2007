defmodule EngineMonitor do
	
	# Returns the last reading taken from a given list
	def latest([ head | _tail ]) do
		head
	end

	# A given reading "new" will be appended to the start of a given list
	def new_reading( new, list ) do
		[ new | list ]
	end

	# Returns the maximum reading in a given list, can be done with Enum.max
	defp max_recurse([], max) do
		max
	end
	defp max_recurse([ h | t ], max) when max <= h do
		max_recurse(t, h) 
	end
	defp max_recurse([ h | t ], max) when max > h do
		max_recurse(t, max)
	end
	def max_reading([ h | t ]) do
		max_recurse(t, h)
	end

	# Returns the number of times a reading has risen
	defp rising_recurse([h|t]) when h <= latest(t) do
		rising_recurse(t)
	end
	defp rising_recurse([h|t]) when h > latest(t) do
		1 + rising_recurse(t)
	end
	def rising([h|t]) do
		1 + rising_recurse()
	end

	# Returns a Boolean value indicating if a dangerous spike or drop in readings has been detected. Assumed a change of ‘50’ indicates a hazardous condition.
	def danger?([h|t]) do
		cond do
			(abs(h - latest(t)) > 50) -> true
			true -> danger?(t)
		end
	end

	# Accepts a string of text and detects whether or not the word ‘FIRE’ appears
	def fire?(x) do
		String.downcase(x) |> String.contains?(x, "fire")
	end

	# Accepts a string, then outputs another string made up of the first letter of every word in the input string
	# If the list is empty, return the result
    # Else append (using <>) the first character of head to the result, and keep recursing
    defp get_chars([], result), do: result
    defp get_chars([head | tail], result), do: tail |> get_chars(result <> String.first(head))
    def decode(string), do: string |> String.upcase |> String.split |> get_chars("")
	
end
