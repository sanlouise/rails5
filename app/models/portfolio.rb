class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :subtitle, :main_image, :thumb_image

  def self.ruby_on_rails
    where(subtitle: 'Ruby on Rails')
  end

  def self.javascript
    where(subtitle: 'Javascript')
  end

  def self.computer_science
    where(subtitle: 'Computer Science')
  end

end
