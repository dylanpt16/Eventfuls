import React from 'react';
import EventIndexItem from './event_index_item';

const noEvent = () => (
  <div>
    <h1>No results!</h1>
    <h2>Try adjusting your map search</h2>
  </div>
);

const renderEvent = ({ events }) => (
  <div className="map-search-results-container">
    <h1>Events Around You: </h1>
    <div className="map-search-results">
      {events.map(event => (
        <EventIndexItem
          event={event}
          key={event.id}
        />
      ))}
    </div>
  </div>
);

const EventIndex = ({ events }) => {
  if (events.length) {
    return renderEvent({ events });
  } else {
    return noEvent();
  }
};

export default EventIndex;
