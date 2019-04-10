class CreateBots < ActiveRecord::Migration[5.2]
  def change
    create_table :bots do |t|

      t.timestamps
    end
  end
end
