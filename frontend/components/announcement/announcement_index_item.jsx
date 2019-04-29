import React from 'react';

const AnnouncementIndexItem = ({ announcement }) => (
  <div>
    <div>
      {announcement.content}
    </div>
    <div>
      {announcement.user.name}
    </div>
  </div>
)

export default AnnouncementIndexItem;
