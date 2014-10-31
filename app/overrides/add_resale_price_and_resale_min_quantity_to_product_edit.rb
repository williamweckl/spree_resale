Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                     :name => 'add_resale_price_and_resale_min_quantity_to_product_edit',
                     :insert_after => "erb[loud]:contains('text_field :price')",
                     :text => "
    <%= f.field_container :resale_price do %>
      <%= f.label :resale_price %>
      <%= f.text_field :resale_price, :value =>
        number_to_currency(@product.resale_price, :unit => '') %>
      <%= f.error_message_on :resale_price %>
    <% end %>
    <%= f.field_container :resale_min_quantity do %>
      <%= f.label :resale_min_quantity %>
      <%= f.number_field :resale_min_quantity %>
      <%= f.error_message_on :resale_min_quantity %>
    <% end %>
  ")