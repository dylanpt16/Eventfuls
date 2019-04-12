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
    this.updateSearch = this.updateSearch.bind(this);
  }

  update(property) {
    return e => this.setState({
      [property]: e.target.value
    });
  }

  updateSearch(e) {
    return this.setState({
      eventSearch: !this.state.eventSearch
    });
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
      <div className="event-search-container-front-page">
        <form className="btn-group">
          <label className={this.state.eventSearch ? "btn btn-primary active" : "btn btn-primary"}>
            <input type="radio"
              checked={this.state.eventSearch === true} 
              onChange={this.updateSearch} />
            Event
          </label>
          <label className={!this.state.eventSearch ? "btn btn-primary active" : "btn btn-primary"}>
            <input type="radio"
              checked={this.state.eventSearch === false} 
              onChange={this.updateSearch} />
            Group
          </label>
        </form>
        <div className="event-search">
          <div className="event-map-container">
            <Map
              center={this.props.center}
              updateFilter={this.props.updateFilter}
              fetchLocation={this.props.fetchLocation}
              events={this.props.events}
              groups={this.props.groups}
              eventSelected={this.state.eventSearch}
            />
          </div>
          {this.renderSelectedSearch()}
        </div>
      </div>
    );
  };
}

export default withRouter(Search);
