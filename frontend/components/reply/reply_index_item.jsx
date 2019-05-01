import React from 'react';

const ReplyIndexItem = ({ reply }) => (
  <div className="reply-index-item">
    <div>
      {reply.user.name}
    </div>
    <div>
      {reply.content}
    </div>
  </div>
)

export default ReplyIndexItem;
