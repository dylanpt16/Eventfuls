import React from 'react';
import EventIndexItem from './event_index_item';

const EventIndex = ({ events }) => (
  <div>
    <h1>Events Around You: </h1>
    {events.map(event => (
      <EventIndexItem
        event={event}
        key={event.id}
      />
    ))}
  </div>
);

export default EventIndex;
