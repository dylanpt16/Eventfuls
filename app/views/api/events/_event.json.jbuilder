json.extract! event, :id, :name, :description,
  :lat, :lng,
  :picture_url, :date

json.event_location do
  json.lat event.lat
  json.lng event.lng
end

if current_user
  json.joined_by_current_user !!event.attendances.find_by(user_id: current_user.id)
  json.owned_by_current_user !!(event.owner_id === current_user.id)
  json.attendees do
    json.partial! 'api/users/user', collection: event.attendees, as: :user
  end
end

json.attendance_count event.attendees.length
