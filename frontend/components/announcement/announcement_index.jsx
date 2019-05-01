import React from 'react';

import AnnouncementIndexItem from './announcement_index_item';
import ReplyContainer from '../reply/reply_container';

const AnnouncementIndex = ({ announcements }) => (
  <div className="announcement-index">
    { announcements.slice().reverse().map( announcement => (
      <div
        key={announcement.id}
        className="announcement-index-item"
      >
        <AnnouncementIndexItem
          announcement={announcement}
        />
        <ReplyContainer
          announcementId={announcement.id}
        />
      </div>
    ))}
  </div>
)

export default AnnouncementIndex;
