class Article < ActiveRecord::Base
  acts_as_taggable
  validates :title, :summary, :content, presence: true
end
