class View

  def create_gossip
    puts "Quel est ton nom ?"
    puts ""
    print "•    › ".green
    author = gets.chomp
    puts ""
    puts "Ok #{author}, quel est ton secret ?"
    puts ""
    print "•    › ".green
    content = gets.chomp
    params = { author: author, content: content }
    return params
  end

end
