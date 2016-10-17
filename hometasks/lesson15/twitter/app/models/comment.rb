class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :twit
  validates :body, presence: true
  validates :user, presence: true
end
