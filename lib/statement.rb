

class Statement

  def header
    print "date || earning || spending || balance "
  end
  
  def format_transaction(transaction)
    print "#{transaction.date} || #{transaction.earning} || #{transaction.spending} || #{transaction.balance}"
  end

end
