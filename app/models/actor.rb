class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def self.full_name
    self.select('first_name', 'last_name').first
  end
  def self.list_roles

  end
end
