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
    name: customer.name,
    address1: customer.address1,
    address2: customer.address2
  )
end
