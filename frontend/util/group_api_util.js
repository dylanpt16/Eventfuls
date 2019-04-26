export const fetchGroups = data => (
  $.ajax({
    method: 'GET',
    url: '/api/groups',
    data
  })
);

export const fetchGroup = id => (
  $.ajax({
    method: 'GET',
    url: `/api/groups/${id}`
  })
);

export const createGroup = group => (
  $.ajax({
    method: 'POST',
    url: '/api/groups',
    data: group
  })
);

export const createAnnouncement = announcement => (
  $.ajax({
    method: 'POST',
    url: '/api/announcements',
    data: announcement
  })
);

export const createMembership = membership => (
  $.ajax({
    method: 'POST',
    url: '/api/memberships',
    data: membership
  })
);

export const destroyMembership = membership => (
  $.ajax({
    method: 'DELETE',
    url: '/api/memberships',
    data: membership
  })
);

export const createReply = reply => (
  $.ajax({
    method: 'POST',
    url: '/api/replies',
    data: reply
  })
)
