import React from 'react';
import { withRouter } from 'react-router';

import EventIndex from './event_index';
import EventMap from '../event_form/event_map';

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
          <EventMap
            center={this.props.center}
            updateFilter={this.props.updateFilter}
            fetchLocation={this.props.fetchLocation}
          />
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
