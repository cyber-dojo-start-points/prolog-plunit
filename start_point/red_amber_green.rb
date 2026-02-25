
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :green if status === 0
  return :red   if /\stest (\S+): failed/.match(output)
  return :amber
}
