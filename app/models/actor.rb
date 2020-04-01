class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    Actor.select('first_name')
  end
  def list_roles

  end
end
