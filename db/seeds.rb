products = Product.all

products.each do |product|
  id = rand(1..2)
  product.update(supplier_id: id)
end




# product = Product.new(name: "Keyboard", price: 75.00, img_url: "keyboard.computer.tkl.amazon", description: "Mechanical Keyboard wired")
# product.save

# product = Product.new(name: "Computer mouse", price: 60.00 , img_url: "computer.mouse", description: "wired computer mouse")
# product.save

# product = Product.new(name: "Computer desk", price: 200.00, img_url: "desks.computer.wood.l-shaped.com", description: "L-shaped computer desk")
# product.save

# product = Product.new(name: "Computer chair", price: 150.00, img_url: "desk.chair.computer.leather", description: "Adjustable computer chair with lumbar support")
# product.save

# product = Product.new(name: "desk lamp", price: 15.00, img_url: "desk.accessory.lamp", description: "10 inch desk lamp")
# product.save


#CREATED WITH rails db:seed:dump APPEND=true (recovers data if deleted)


# Product.create!([
  # {name: "Keyboard", price: "75.0", img_url: "keyboard.computer.tkl.amazon", description: "Mechanical Keyboard wired", inventory: nil},
  # {name: "Computer mouse", price: "60.0", img_url: "computer.mouse", description: "wired computer mouse", inventory: nil},
  # {name: "Computer chair", price: "150.0", img_url: "desk.chair.computer.leather", description: "Adjustable computer chair with lumbar support", inventory: nil},
  # {name: "desk lamp", price: "15.0", img_url: "desk.accessory.lamp", description: "10 inch desk lamp", inventory: nil},
  # {name: "graphics cards", price: "700.0", img_url: "http://www.bestbuy.com/gpu", description: "rtx 3080", inventory: nil},
  # {name: "cpu", price: "550.0", img_url: "http://www.bestbuy.com/cpu", description: "ryzen 5900x", inventory: nil},
  # {name: "Ram", price: "180.0", img_url: "http://bestbuy.com/ram", description: "32gb ram", inventory: nil},
  # {name: "cool hat", price: "15.0", img_url: nil, description: "An awesome hat ", inventory: nil},
  # {name: "end table", price: "150.0", img_url: nil, description: "an end table to hold all your stuff", inventory: nil},
  # {name: "notepad", price: "5.0", img_url: nil, description: "something to write on", inventory: nil},
  # {name: "car", price: "35000.0", img_url: nil, description: "nice car", inventory: nil},
  # {name: "monitor", price: "180.0", img_url: "http://bestbuy.com/monitor", description: "1m/s 144hz monitor", inventory: nil},
  # {name: "air sprayer", price: "8.0", img_url: "http://www.bestbuy.com/air", description: "compressed air", inventory: nil}

