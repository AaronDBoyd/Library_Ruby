class Patron
  attr_reader :id
  attr_accessor :name

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @name = attributes.fetch(:name)
  end



end