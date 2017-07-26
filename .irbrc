require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

def cl
  system 'clear'
end

def rr
  reload!
end

def clr
  cl
  rr
  puts "Cleaned and Reloaded =)"
end
