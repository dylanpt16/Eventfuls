export const createEvent = data => (
  $.ajax({
    method: 'POST',
    url: '/api/events',
    data
  })
);

export const fetchEvent = id => (
  $.ajax({
    method: 'GET',
    url: `/api/events/${id}`
  })
);
