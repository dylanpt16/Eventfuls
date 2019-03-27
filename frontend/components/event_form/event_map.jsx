import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import Map from '../event_map/map';

class EventMap extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      center: this.props.center,
      location: 'seattle'
    } // Seattle coords
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchLocation(this.state.location)
  }

  render() {
    return (
      <div className="map-search-container">
        <div className="map-search-form">
          <label className="event-field-label">Please select Event's location on map</label>
          <br />
          <input
            type="text"
            placeholder="Your Adress"
            onChange={this.update('location')}
            className="map-search-input"
          />
          <button
            onClick={this.handleSubmit}
            className="map-search-button">Go</button>
        </div>
        <div className="map-container">
          <Map
            center={this.props.center}
            eventAddress={this.props.eventAddress}
          />
        </div>
      </div>
    )
  }
}

export default withRouter(EventMap);
