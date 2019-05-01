import React from 'react';

import ReplyIndexItem from './reply_index_item';

const ReplyIndex = ({ replies }) => (
  <div className="reply-index">
    { replies.map( reply => (
      <ReplyIndexItem
        reply={reply}
        key={reply.id}
      />
    ))}
  </div>
);

export default ReplyIndex;
