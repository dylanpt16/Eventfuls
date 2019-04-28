@announcements.each do |announcement|
  json.set! announcement.id do
    json.partial! 'announcement', announcement: announcement
  end
end
