json.extract! announcement, :id, :content, :group_id, :user_id, :created_at

json.user do
  json.partial! 'api/users/user', user: announcement.user
end
