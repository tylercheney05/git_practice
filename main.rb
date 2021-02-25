def puts_git_info(cmd)
  puts `git #{cmd} -h`
  menu
end
def menu
  puts '1. Enter git command'
  puts '2. Exit'
  choice = gets.strip.to_i
  case choice
  when 1
    puts 'Enter git command'
    puts_git_info(gets.strip)
  when 2
    exit
  else
    puts 'Invalid Choice, try 1 or 2'
    menu
  end
end
menu