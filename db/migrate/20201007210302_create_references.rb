class CreateReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :references do |t|
      t.string :url
      t.string :note
      t.references :issue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
