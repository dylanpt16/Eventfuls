import React from 'react';

import moment from 'moment';

const CalendarBox = ({ date }) => (
  <div className="calendar-box-container">
    <span className="calendar-box-day">{ moment(date).format("DD") }</span>
    <span className="calendar-box-month">{ moment(date).format("MMM") }</span>
  </div>
)

export default CalendarBox;
