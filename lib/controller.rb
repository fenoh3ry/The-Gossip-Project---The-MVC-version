require 'gossip'
require 'view'
require 'pry'
require 'rb-readline'

class Controller
  attr_accessor :author, :content, :view

  def initialize
    @view = View.new
  end
  
  def create_gossip
    params = @view.create_gossip
    my_gossip = Gossip.new(params[:author], params[:content])
    my_gossip.save
  end

  def index_gossips
    @view.index_gossips
  end

end

#binding.pry
#https://github.com/fenoh3ry