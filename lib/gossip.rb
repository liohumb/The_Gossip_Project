require 'csv'

class Gossip

  attr_accessor :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  

end
