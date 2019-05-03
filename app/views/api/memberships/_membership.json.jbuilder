json.extract! membership, :id, :user_id, :group_id
json.partial! 'api/users/user', user: membership.user
