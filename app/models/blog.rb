class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  belongs_to :topic

  scope :ruby_on_rails_blog_post, -> { where(topic: 'Ruby on Rails') }
  scope :javascript_blog_post, -> { where(topic: 'Javascript') }
  scope :computer_science_blog_post, -> { where(topic: 'Mobile App') }

end
