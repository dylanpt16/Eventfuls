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

export const fetchMemberships = data => (
  $.ajax({
    method: 'GET',
    url: '/api/memberships',
    data
  })
);
