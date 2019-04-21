import React from 'react';

const AttendanceIndexItem = ({ attendee }) => (
  <div className="row row-eq-height">
    <div className="col-sm-5 user-img">
      <img className="user-img" src={attendee.picture_url} />
    </div>
    <div className="col-sm-7">
      {attendee.name}
    </div>
  </div>
);

export default AttendanceIndexItem;
