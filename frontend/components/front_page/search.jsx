import React from 'react';
import { withRouter } from 'react-router';

import Map from '../event_map/map';
import EventIndex from './event_index';

class Search extends React.Component {
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
      <div className="map-search-container-front-page">
        <div className="map-search-left">
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
              updateFilter={this.props.updateFilter}
            />
          </div>
        </div>
        <div className="map-search-right">
          <EventIndex
            events={this.props.events}
          />
        </div>
      </div>
    );
  };
}

export default withRouter(Search);
