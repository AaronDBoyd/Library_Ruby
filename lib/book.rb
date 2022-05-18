class Book
  attr_reader :id
  attr_accessor :title

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @title = attributes.fetch(:title)
  end


end