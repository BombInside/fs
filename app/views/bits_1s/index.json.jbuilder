json.array!(@bits_1s) do |bits_1|
  json.extract! bits_1, :id, :user_id, :bit_cost, :comment
  json.url bits_1_url(bits_1, format: :json)
end
