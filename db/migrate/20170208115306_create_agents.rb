class CreateAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :agents do |t|
      t.string :full_name
      t.boolean :logged
      t.boolean :call_status

      t.timestamps
    end
  end
end
