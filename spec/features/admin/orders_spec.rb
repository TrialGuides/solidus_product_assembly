RSpec.feature "Orders", type: :feature, js: true do
  stub_authorization!

  given(:order) { create(:order_with_line_items) }
  given(:line_item) { order.line_items.first }
  given(:bundle) { line_item.product }
  given(:parts) { (1..3).map { create(:variant) } }

  background do
    bundle.parts << [parts]
    line_item.update_attributes!(quantity: 3)
    order.reload.create_proposed_shipments
    order.finalize!
  end

  # The edit functionality in solidus_product_assembly has been deleted
  # to match how solidus has deleted the functionality
  # The delete functionality is still broken (as of 1/26/2016)

  # scenario "allows admin to edit product bundle" do
  #   visit spree.edit_admin_order_path(order)

  #   within("table.product-bundles") do
  #     find(".edit-line-item").click
  #     fill_in "quantity", with: 2
  #     find(".save-line-item").click
  #   end

  #   wait_for_ajax

  #   visit spree.edit_admin_order_path(order)

  #   within("table.stock-contents") do
  #     stock_quantities = all(".item-qty-show").map(&:text)

  #     expect(stock_quantities).to match [
  #       "2 x backordered",
  #       "2 x backordered",
  #       "2 x backordered"
  #     ]
  #   end
  # end
end
