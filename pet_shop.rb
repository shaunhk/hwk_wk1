# require ('pry')

def pet_shop_name (shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  shop[:admin][:total_cash] += money
end

def add_or_remove_cash(shop, money)
  shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, pets)
  shop[:admin][:pets_sold] += pets
end

def stock_count(shop)
  for pets in shop
    pets = shop[:pets]
  end
  return pets.length
end

def pets_by_breed(shop, breed)
  types = []
  for pet in shop[:pets]
    types.push(pet[:breed]) if pet[:breed] == breed
  end
  return types
end

def find_pet_by_name(shop, name)
  for pets in shop[:pets]
    pet = pets if name == pets[:name]
  end
  return pet
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    shop[:pets].delete(pet) if pet[:name] == name
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  pet_count = 0
  pet_count += customer[:pets].length
  return pet_count
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, new_pet)
  return customer[:cash] >= new_pet[:price] ? true : false
end

def sell_pet_to_customer(shop, pet, customer)
  for pets in shop[:pets]
    if pets == pet && pet[:price] <= customer[:cash]
      customer[:pets].push(pet)
      shop[:admin][:pets_sold] += 1
      remove_customer_cash(customer, pets[:price])
      remove_pet_by_name(shop, pet)
      add_or_remove_cash(shop, pets[:price])
    end
  end
end
