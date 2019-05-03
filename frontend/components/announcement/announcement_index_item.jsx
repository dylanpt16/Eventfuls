import React from 'react';
import moment from 'moment';

const AnnouncementIndexItem = ({ announcement }) => (
  <div className="announcement-index-item-details">
    <div className="announcement-index-item-name">
      <div>
        {announcement.user.name}
      </div>
      <div>
        { moment(announcement.created_at).fromNow() }
      </div>
    </div>
    <div>
      {announcement.content}
    </div>
  </div>
)

export default AnnouncementIndexItem;
