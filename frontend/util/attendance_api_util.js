export const createAttendance = attendance => (
  $.ajax({
    method: 'POST',
    url: '/api/attendances',
    data: attendance
  })
);

export const destroyAttendance = attendance => (
  $.ajax({
    method: 'DELETE',
    url: '/api/attendances',
    data: attendance
  })
);

export const fetchAttendances = data => (
  $.ajax({
    method: 'GET',
    url: '/api/attendances',
    data
  })
);
