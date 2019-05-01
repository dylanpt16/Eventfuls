import React from 'react';

import AnnouncementIndex from './announcement_index';
import AnnouncementFormContainer from './announcement_form_container';

class Announcement extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.fetchAnnouncements(this.props.groupId);
  }

  render() {
    const { announcements, group }  = this.props

    return(
      <div className="announcement-container">
        <h2>Announcements</h2>
        <AnnouncementIndex
          announcements={announcements}
        />
        <AnnouncementFormContainer
          group={group}
        />
      </div>
    )
  }
}

export default Announcement;
