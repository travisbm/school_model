json.array!(@schools) do |school|
  json.extract! school, :id, :school_name
  json.url school_url(school, format: :json)
end
