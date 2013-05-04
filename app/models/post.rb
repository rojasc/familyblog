class Post < ActiveRecord::Base
  attr_accessible :body, :name, :title, :comments_count

  validates :body, :presence => true
  validates :name, :presence => true
  validates :title, :presence => true

  has_many :comments, dependent: :destroy
end
