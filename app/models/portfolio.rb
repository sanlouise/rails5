class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :subtitle, :main_image, :thumb_image

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
  scope :javascript_portfolio_items, -> { where(subtitle: 'Javascript') }
  scope :mobile_app_portfolio_items, -> { where(subtitle: 'Mobile App') }
  
end
