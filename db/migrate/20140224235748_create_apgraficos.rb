class CreateApgraficos < ActiveRecord::Migration
  def change
    create_table :apgraficos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
