import React from 'react';

import AttendanceIndexItem from './attendance_index_item';

const AttendanceIndex = ({ attendees }) => (
  <div classname="attendance-index">
    <div>
      <h2>Attendees</h2>
    </div>
    <div>
      { attendees.map( attendee => (
        <AttendanceIndexItem
          attendee={attendee}
          key={attendee.id}
        />
      ))}
    </div>
  </div>
)

export default AttendanceIndex;
