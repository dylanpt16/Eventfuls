json.extract! group, :id, :name, :description, :picture_url,
  :lat, :lng

if current_user
  json.joined_by_current_user !!group.memberships.find_by(user_id: current_user.id)
  json.owned_by_current_user !!(group.owner_id === current_user.id)
  json.members do
    json.partial! 'api/users/user', collection: group.members, as: :user
  end
end

json.member_count group.members.length

json.owner group.owner.name

json.announcements do
  json.partial! 'api/announcements/announcement', collection: group.announcements, as: :announcement
end
