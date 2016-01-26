module Spree
  module Stock
    InventoryUnitBuilder.class_eval do
      def units
        @order.line_items.flat_map do |line_item|
          line_item.quantity_by_variant.flat_map do |variant, quantity|
            quantity.times.map {
              @order.inventory_units.build(
              pending: true,
              variant: variant,
              line_item: line_item,
              order: @order
              )
            }
          end
        end
      end
    end
  end
end
