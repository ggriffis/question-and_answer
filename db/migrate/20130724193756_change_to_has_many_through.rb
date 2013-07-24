class ChangeToHasManyThrough < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end

    drop_table :questions_users
  end
end
