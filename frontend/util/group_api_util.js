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
