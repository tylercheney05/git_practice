require 'colorize'
require_relative 'git'
class Main
  include Git
  def menu
    puts 'Main menu'.colorize(:cyan)
    puts '1. Enter git command'.colorize(:green)
    puts '2. Exit'.colorize(:blue)
    choice = gets.strip.to_i
    case choice
    when 1
      puts 'Enter git command'.colorize(:yellow)
      Git.puts_git_info(gets.strip)
    when 2
      exit
    else
      puts 'Invalid Choice, try 1 or 2'.colorize(:error)
      menu
    end
  end
end
app = Main.new()
app.menu