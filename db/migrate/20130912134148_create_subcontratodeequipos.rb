class CreateSubcontratodeequipos < ActiveRecord::Migration
  def change
    create_table :subcontratodeequipos do |t|
      t.integer :proveedore_id
      t.string :valorizacion
      t.string :adelanto
      t.string :adelanto_detalle
      t.string :condiciones_de_pago
      t.string :igv
      t.string :fondo_de_garantia

      t.timestamps
    end
  end
end
