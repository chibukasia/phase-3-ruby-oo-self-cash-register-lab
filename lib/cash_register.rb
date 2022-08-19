class CashRegister
    #@@total = 0
    attr_accessor :discount, :total
    def initialize(discount=0)
        self.total = 0
        @discount = discount
        self.items = []
        self.last_transaction_amount = 0
    end

    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        @total += price * quantity
        quantity.times do 
          items << title 
        end
        self.last_transaction_amount = price * quantity
    end

    def apply_discount
        if discount > 0
            self.total = total - (total * self.discount/100)
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end

    end
    def items=(list)
        @items = list
    end
    def items
        @items
    end

    def last_transaction_amount=(total)
        @last_transaction_amount = total
    end

    def last_transaction_amount
        @last_transaction_amount
    end
    def void_last_transaction
        @total -= last_transaction_amount
    end
end

