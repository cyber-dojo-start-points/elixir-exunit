defmodule HIKER do

  # The learner put a print inside a loop to see what was happening. It prints
  # far more than the 50K the runner keeps of a stream, and ExUnit writes both
  # the raised error and the summary to that same stream afterwards, so both
  # are dropped. The exit status survives truncation and says 2, and with no
  # "** (RuntimeError)" line left to read, the run that an untruncated output
  # would have called amber is called red.
  def answer do
    Enum.each(0..5000, fn i -> IO.puts("debug: answer was called, i is #{i}") end)
    raise "the vogons ate the answer"
  end

end
