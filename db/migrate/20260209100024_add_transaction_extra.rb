class AddTransactionExtra < ActiveRecord::Migration[8.0]
  def change
    add_column :transactions, :metadata, :string
    add_column :transactions, :extra, :jsonb, default: {}
  end
end
