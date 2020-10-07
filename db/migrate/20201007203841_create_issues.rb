class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :issue_name
      t.string :priority
      t.string :description
      t.boolean :in_progress
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
