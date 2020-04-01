class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    actors.select('first_name', 'last_name').first
  end
  def list_roles

  end
end
