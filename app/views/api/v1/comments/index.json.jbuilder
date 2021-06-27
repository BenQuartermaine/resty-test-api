json.array! @comments do |comment|
  json.extract! comment, :content, :id, :user_id, :restaurant_id
end