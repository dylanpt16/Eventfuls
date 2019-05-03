json.extract! reply, :id, :content, :announcement_id, :user_id, :created_at

json.user do
  json.partial! 'api/users/user', user: reply.user
end
