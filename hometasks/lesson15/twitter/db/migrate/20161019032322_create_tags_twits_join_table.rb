class CreateTagsTwitsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :tags, :twits do |t|
      # t.index [:tag_id, :twit_id]
      # t.index [:twit_id, :tag_id]
    end
  end
end
