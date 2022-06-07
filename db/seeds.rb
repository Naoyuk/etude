# frozen_string_literal: true

categories = ['T-shirts', 'Pants', 'Insulated Jacket', 'Soft Shell Jacket',
              'Backpack', 'Accessory']

categories.each do |category|
  Category.create(name: category)
end

customers = [
  { name: 'James Smith', address1: '1234 Pemberton Ave' },
  { name: 'John Williams', address1: '1111 Second Ave', address2: '#112' },
  { name: 'Michael Brown', address1: '2221 Third Ave' },
  { name: 'David Taylor', address1: '3333 Fourth Ave', address2: '#65' },
  { name: 'Thomas Jackson', address1: '4444 Goverment Rd' },
  { name: 'Steven Lee', address1: '5555 Garibaldi Way' }
]

customers.each do |customer|
  Customer.create(
    name: customer[:name],
    address1: customer[:address1],
    address2: customer[:address2]
  )
end

items = [
  { name: 'Atwel Foody', price: 150.00, category_id: 3 },
  { name: 'The Chief t_shirts', price: 45.00, category_id: 0 },
  { name: 'Mamquam Pants', price: 120.00, category_id: 1 },
  { name: 'Brandy Wine T-shirts', price: 43.00, category_id: 0 },
  { name: 'Sky Pirot 30L', price: 180.00, category_id: 4 },
  { name: 'Sky Pirot 40L', price: 220.00, category_id: 4 },
  { name: 'Alpha Jacket', price: 450.00, category_id: 2 }
]

items.each do |item|
  Item.create(name: item[:name], price: item[:price], category_id: item[:category_id])
end
