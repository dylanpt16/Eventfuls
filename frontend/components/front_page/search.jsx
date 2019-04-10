import React from 'react';
import { withRouter } from 'react-router';

import EventIndex from '../event_show/event_index';
import GroupIndex from '../group_show/group_index';
import Map from '../map/map';

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      center: this.props.center,
      location: 'seattle',
      eventSearch: true
    } // Seattle coords
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleSwitchSearch = this.handleSwitchSearch.bind(this);
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  handleSwitchSearch(e) {
    e.preventDefault();
    this.setState({eventSearch: !this.state.eventSearch});
  }

  renderSelectedSearch() {
    if (this.state.eventSearch) {
      return(
        <EventIndex
          events={this.props.events}
        />
      );
    }else {
      return(
        <GroupIndex
          groups={this.props.groups}
        />
      );
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchLocation(this.state.location)
  }

  render() {
    return (
      <div className="map-search-container-front-page">
        <ul className="map-search-switch">
          <li>
            <button
              className={this.state.eventSearch ? "btn btn-secondary btn-lg disabled" : "btn btn-secondary btn-lg active"}
              onClick={this.handleSwitchSearch}
            >Event</button>
          </li>
          <li>
            <button
              className={!this.state.eventSearch ? "btn btn-secondary btn-lg disabled" : "btn btn-secondary btn-lg active"}
              onClick={this.handleSwitchSearch}
            >Group</button>
          </li>
        </ul>
        <div className="map-search">
          <Map
            center={this.props.center}
            updateFilter={this.props.updateFilter}
            fetchLocation={this.props.fetchLocation}
            events={this.props.events}
            groups={this.props.groups}
            eventSelected={this.state.eventSearch}
          />
          {this.renderSelectedSearch()}
        </div>
      </div>
    );
  };
}

export default withRouter(Search);
