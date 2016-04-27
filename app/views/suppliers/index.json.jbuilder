json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :item_supplies
  json.url supplier_url(supplier, format: :json)
end
