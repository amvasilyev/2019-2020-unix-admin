#!/usr/bin/env ruby

Kernel.system("ls -l") # Опять был использован Bash
Kernel.system("ls", "-l")

result = Kernel.system('ls', '-l')
pp result
result = Kernel.system('ls', '/aoeuao')
pp result
result = Kernel.system(['aoeu', 'aoeu'])
pp result

