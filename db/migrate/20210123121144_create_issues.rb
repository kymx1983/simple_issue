class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.date :limit_date
      t.integer :status

      t.timestamps
    end
  end
end
