class AddAgregados1ToSubcontratos < ActiveRecord::Migration
  def change
    add_column :subcontratos, :amortizacion_porcentaje, :string
    add_column :subcontratos, :amortizacion_numero, :string
    add_column :subcontratos, :fondo_garantia_porcentaje, :string
    add_column :subcontratos, :detraccion_total_inicial_porcentaje, :string
    add_column :subcontratos, :monto_contratado, :string
    add_column :subcontratos, :adelanto1, :string
    add_column :subcontratos, :adelanto2, :string
    add_column :subcontratos, :adelanto3, :string
    add_column :subcontratos, :adelanto4, :string
    add_column :subcontratos, :fecha1, :date
    add_column :subcontratos, :fecha2, :date
    add_column :subcontratos, :fecha3, :date
    add_column :subcontratos, :fecha4, :date
  end
end
