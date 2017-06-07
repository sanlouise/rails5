class Skill < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :percentage

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
