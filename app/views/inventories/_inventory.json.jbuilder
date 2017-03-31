json.extract! inventory, :id, :itemName, :itemQuantity, :itemDesc, :itemCatagory, :itemPrice, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
