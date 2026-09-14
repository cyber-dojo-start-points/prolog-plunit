
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /\stest (\S+): failed/.match(output)

  # plunit exits zero for a great deal besides a passing run: a sandbox with no
  # test at all, a test file it could not parse, and a unit whose only test is
  # blocked all leave it content. Green rests on its own summary instead, and
  # on that summary counting something: it says "test passed" for one and
  # "All N tests passed" for more, and prints "All 0 tests passed" when every
  # test was blocked.
  return :green if /^% test passed in /.match(output)
  return :green if /^% All [1-9]\d* tests passed in /.match(output)

  return :amber
}
