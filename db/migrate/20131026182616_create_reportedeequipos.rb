class CreateReportedeequipos < ActiveRecord::Migration
  def change
    create_table :reportedeequipos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
