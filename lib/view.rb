class View

  def create_gossip
    puts "Quel est ton nom ?"
    author = gets.chomp
    puts "Quel est ton secret ?"
    content = gets.chomp
    params = { author: author, content: content }
    return params
  end

end
