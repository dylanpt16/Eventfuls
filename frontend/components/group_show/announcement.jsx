import React from 'react';

import AnnouncementIndex from './announcement_index';
import AnnouncementFormContainer from './announcement_form_container';

const Announcement = ({ announcements, group }) => (
  <div>
    <h2>Announcements</h2>
    <AnnouncementIndex
      announcements={announcements}
    />
    <AnnouncementFormContainer
      group={group}
    />
  </div>
)

export default Announcement;
