json.array!(@mytests) do |mytest|
  json.extract! mytest, :id
  json.url mytest_url(mytest, format: :json)
end
