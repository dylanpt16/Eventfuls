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

export const fetchLocation = location=> (
  $.ajax({
    method: 'GET',
    url: `https://maps.googleapis.com/maps/api/geocode/json?address=${location}&key=AIzaSyDuM6BzADJJMdyyUDVno0nmPLBTTj7rG3w`
  })
)
