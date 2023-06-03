class CreateStreamers < ActiveRecord::Migration[7.0]
  def change
    create_table :streamers do |t|
      t.string :username

      t.timestamps
    end
  end
end
