module SpreeTemando
  module LineItemShippingDecorator
    def to_temando_item
      item = self.variant.to_temando_item
      item.quantity = self.quantity
      item
    end
  end
end
Spree::LineItem.send(:include, SpreeTemando::LineItemShippingDecorator)
