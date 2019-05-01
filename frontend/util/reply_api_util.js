export const createReply = reply => (
  $.ajax({
    method: 'POST',
    url: '/api/replies',
    data: reply
  })
);

export const fetchReplies = data => (
  $.ajax({
    method: 'GET',
    url: '/api/replies',
    data
  })
);
