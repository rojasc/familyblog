class Comment < ActiveRecord::Base
  attr_accessible :body, :name, :post_id
  belongs_to :post, counter_cache: true
end
