module Dumper
  def self.dump_txs
    txs = Transaction.all
    CSV.open("txs.csv", "w") do |csv|
      names = Transaction.column_names
      names = names[0...3] + names[4..-1]
      csv << names
      txs.find_each do |tx|
        txx = tx.attributes.values
        txx = txx[0...3] + txx[4..-1]
        csv << txx
      end
    end
  end
end
