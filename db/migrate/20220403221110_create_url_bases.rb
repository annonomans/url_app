class CreateUrlBases < ActiveRecord::Migration[7.0]
  def change
    create_table :url_bases do |t|
      t.string :url

      t.timestamps
    end
  end
end
