import React from 'react';

import AttendanceIndexItem from './attendance_index_item';

class AttendanceIndex extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    return(
      <div>
        <div>
          <h2>Attendees:</h2>
        </div>
        <div>
        </div>
      </div>
    )
  }
}
export default AttendanceIndex;
