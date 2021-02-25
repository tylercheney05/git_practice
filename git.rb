module Git
  def self.puts_git_info(cmd)
    puts 'Your command:'
    puts `git #{cmd} -h`
  end
end