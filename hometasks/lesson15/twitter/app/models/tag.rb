class Tag < ActiveRecord::Base
  has_and_belongs_to_many :twits, join_table: 'tags_twits'
  acts_as_nested_set  dependent: :destroy,
                      counter_cache: :children_count
  validates :name, presence: true, uniqueness: true
end
