json.extract! announcement, :id, :content, :group_id, :user_id

json.user do
  json.partial! 'api/users/user', user: announcement.user
end
