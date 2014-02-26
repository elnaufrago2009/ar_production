class AddValorizacionToSubcontratodeequipos < ActiveRecord::Migration
  def change
    add_column :subcontratodeequipos, :amortizacion_inicial_numero, :string
    add_column :subcontratodeequipos, :amortizacion_inicial_porcentaje, :string
    add_column :subcontratodeequipos, :fondo_de_garantia_porcentaje, :string
    add_column :subcontratodeequipos, :detraccion_porcentaje, :string
    add_column :subcontratodeequipos, :adelanto_1_numero, :string
    add_column :subcontratodeequipos, :adelanto_1_fecha, :date
    add_column :subcontratodeequipos, :adelanto_2_numero, :string
    add_column :subcontratodeequipos, :adelanto_2_fecha, :date
    add_column :subcontratodeequipos, :adelanto_3_numero, :string
    add_column :subcontratodeequipos, :adelanto_3_fecha, :date
    add_column :subcontratodeequipos, :adelanto_4_numero, :string
    add_column :subcontratodeequipos, :adelanto_4_fecha, :date
    add_column :subcontratodeequipos, :monto_contratado_suma, :string
  end
end
