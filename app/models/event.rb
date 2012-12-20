class Event
  include Mongoid::Document

  field :name, type: String
  field :start_time, type: DateTime
  field :game, type: String

  attr_accessible :name, :start_time, :game

  # :accessible is a variable used to store the game specific dynamic fields so that they can be set through mass assignment via attr_accessible. this allows the attr_accessible to be set dynamically.
  attr_accessor :accessible

  private
  # Overrided so that extra variables can be added to the attr_accessible dynamically to allow mass assignment.
  def mass_assignment_authorizer(role = :default)
    super + (accessible || [])
  end
end
