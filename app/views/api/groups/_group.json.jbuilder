json.extract! group, :id, :name, :description, :picture_url,
  :lat, :lng

if current_user
  json.joined_by_current_user !!group.memberships.find_by(user_id: current_user.id)
  json.owned_by_current_user !!(group.owner_id === current_user.id)
end

json.member_count group.members.length

json.owner group.owner.name
