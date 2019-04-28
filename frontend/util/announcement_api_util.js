export const createAnnouncement = announcement => (
  $.ajax({
    method: 'POST',
    url: '/api/announcements',
    data: announcement
  })
);

export const fetchAnnouncements = data => (
  $.ajax({
    method: 'GET',
    url: '/api/announcements',
    data
  })
);
