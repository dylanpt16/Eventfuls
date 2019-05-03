import React from 'react';
import moment from 'moment';

const ReplyIndexItem = ({ reply }) => (
  <div className="reply-index-item">
    <div className="reply-index-item-title">
      <div>
        {reply.user.name}
      </div>
      <div>
        { moment(reply.created_at).fromNow() }
      </div>
    </div>
    <div>
      {reply.content}
    </div>
  </div>
)

export default ReplyIndexItem;
