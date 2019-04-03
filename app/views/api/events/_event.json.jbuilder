json.extract! event, :id, :name, :description,
  :lat, :lng, :picture_url, :date

if current_user
  json.joined_by_current_user !!event.attendances.find_by(user_id: current_user.id)
  json.owned_by_current_user !!(event.owner_id === current_user.id)
  json.attendees do
    json.partial! 'api/users/user', collection: event.attendees, as: :user
  end
end
