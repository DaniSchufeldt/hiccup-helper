json.array!(@remedies) do |remedy|
  json.extract! remedy, :id, :description, :twitter_handle
  json.url remedy_url(remedy, format: :json)
end
