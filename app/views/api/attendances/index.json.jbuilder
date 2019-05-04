@attendances.each do |attendance|
  json.set! attendance.user_id do
    json.partial! 'attendance', attendance: attendance
  end
end
