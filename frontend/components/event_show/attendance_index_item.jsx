import React from 'react';

const AttendanceIndexItem = ({ attendee }) => (
  <div className="row">
    <div className="col-sm-4">
      {attendee.id}
    </div>
    <div className="col-sm-8">
      {attendee.username}
    </div>
  </div>
);

export default AttendanceIndexItem;
