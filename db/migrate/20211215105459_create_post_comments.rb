class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|

      t.integer :member_id,      null: false, default: ""
      t.integer :game_id,        null: false, default: ""
      t.string :comment,         null: false, default: ""



      t.timestamps
    end
  end
end
