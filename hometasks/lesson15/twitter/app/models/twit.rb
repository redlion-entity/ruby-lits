class Twit < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags, join_table: 'tags_twits'
  validates :content, presence: true
  validates :user, presence: true
end
