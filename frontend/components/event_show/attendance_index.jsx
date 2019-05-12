import React from 'react';

import AttendanceIndexItem from './attendance_index_item';

const AttendanceIndex = ({ attendees }) => (
  <div className="attendance-index-container">
    <div>
      <h2>Attendees ({attendees.length})</h2>
    </div>
    <div className="attendance-index">
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
