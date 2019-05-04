json.extract! attendance, :id, :user_id, :event_id
json.partial! 'api/users/user', user: attendance.user
