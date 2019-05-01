import React from 'react';

const AnnouncementIndexItem = ({ announcement }) => (
  <div className="announcement-index-item-details">
    <div className="announcement-index-item-name">
      {announcement.user.name}
    </div>
    <div>
      {announcement.content}
    </div>
  </div>
)

export default AnnouncementIndexItem;
