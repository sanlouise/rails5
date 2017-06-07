class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :subtitle, :main_image, :thumb_image

  scope :web_app_portfolio_items, -> { where(subtitle: 'Ruby on Rails') &&  where(subtitle: 'Javascript')}
  scope :mobile_app_portfolio_items, -> { where(subtitle: 'Mobile App') }
  
  # Occurs right after 'new' method in controller has run. This is a callback.
  after_initialize :set_defaults
  #Note, 'after_create' happens after 'create' method has run.

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
