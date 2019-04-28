import React from 'react';

import AnnouncementIndexItem from './announcement_index_item';

const AnnouncementIndex = ({ announcements }) => (
  <div>
    { announcements.map( announcement => (
      <AnnouncementIndexItem
        announcement={announcement}
        key={announcement.id}
      />
    ))}
  </div>
)

export default AnnouncementIndex;
