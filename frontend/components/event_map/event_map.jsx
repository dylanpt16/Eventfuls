import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import { fetchLocation } from '../../util/event_api_util';
import Map from './map';

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
      <div>
        <input
          type="text"
          placeholder="Your Adress"
          onChange={this.update('location')}
          className="map-input"
        />
        <button
          onClick={this.handleSubmit}
          className="map-search-button">Go</button>
        <Map
          center={this.props.center}
          eventAddress={this.props.eventAddress}
        />
      </div>
    )
  }
}

export default withRouter(EventMap);
