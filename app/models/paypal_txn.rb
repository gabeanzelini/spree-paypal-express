class PaypalTxn < ActiveRecord::Base
  enumerable_constant :txn_type, :constants => [:authorize, :capture, :purchase, :void, :credit, :denied, :unknown]

  def txn_type_name
    TxnType.from_value(txn_type)
  end
end
