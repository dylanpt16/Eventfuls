import React from 'react';

import AnnouncementIndexItem from './announcement_index_item';
import ReplyContainer from './reply_container';

const AnnouncementIndex = ({ announcements }) => (
  <div>
    { announcements.map( announcement => (
      <div key={announcement.id}>
        <AnnouncementIndexItem
          announcement={announcement}
        />
        <ReplyContainer
          replies={announcement.replies}
          announcementId={announcement.id}
        />
      </div>
    ))}
  </div>
)

export default AnnouncementIndex;
