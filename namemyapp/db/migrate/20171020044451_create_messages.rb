class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :description
      t.integer :seen

      t.timestamps
    end
  end
end
