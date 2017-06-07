class Skill < ApplicationRecord
  validates_presence_of :title, :percentage

  def set_defaults
    self.badge ||= "http://placehold.it/250x250"
  end
end
