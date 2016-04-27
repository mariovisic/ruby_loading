require 'ostruct'

class User < Struct.new(:name, :items)

  def item_size
    items.size
  end
end
