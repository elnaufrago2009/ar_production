class CreateSubcontratos < ActiveRecord::Migration
  def change
    create_table :subcontratos do |t|
      t.integer :proveedore_id
      t.string :valorizacion
      t.string :adelanto
      t.string :condiciones_de_pago
      t.string :igv
      t.string :fondo_de_garantia
      t.string :adelanto_detalle     

      t.timestamps
    end
  end
end
