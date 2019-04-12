import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import MarkerManager from '../../util/marker_manager';

const getCoordsObj = latLng => ({
  lat: latLng.lat(),
  lng: latLng.lng()
});

class Map extends React.Component {
  constructor(props) {
    super(props);
    this.markers = [];
    this.state = {
      center: this.props.center,
      zoom: 13,
      location: '',
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.placeMarker = this.placeMarker.bind(this);
  };

  componentDidMount() {
    const map = this.refs.map;
    const obj = Object.assign({}, this.state);
    delete obj.location;
    this.map = new google.maps.Map(map, this.state);
    this.MarkerManager = new MarkerManager(this.map, this.handleMarkerClick.bind(this))
    this.registerListeners();
    if(!!this.props.updateFilter) {
      this.props.eventSelected ? this.MarkerManager.updateMarkers(this.props.events) : this.MarkerManager.updateMarkers(this.props.groups);
    }
  }

  componentDidUpdate() {
    if(this.props.putMarker) {
      this.placeMarker(this.map)
      google.maps.event.clearListeners(this.map, 'idle');
      google.maps.event.clearListeners(this.map, 'click');
    }
    if(this.state.center !== this.props.center) {
      this.map.panTo(this.props.center)
      this.setState({ center: this.props.center})
    }
    if(this.props.updateFilter) {
      this.props.eventSelected ? this.MarkerManager.updateMarkers(this.props.events) : this.MarkerManager.updateMarkers(this.props.groups);
    }
  }

  placeMarker(map) {
    var myLatLng = this.props.center;
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'Hello World!'
    });

  }

  registerListeners() {
    if(this.props.updateFilter) {
      google.maps.event.addListener(this.map, 'idle', () => {
        const { north, south, east, west } = this.map.getBounds().toJSON();
        const bounds = {
          northEast: { lat:north, lng: east },
          southWest: { lat: south, lng: west } };
        this.props.updateFilter('bounds', bounds);
      });
    }
    else {
      google.maps.event.addListener(this.map, 'click', (event) => {
        const coords = getCoordsObj(event.latLng);
        this.handleClick(coords);
      });
    }
  }

  handleMarkerClick(event) {
    this.props.eventSelected ? this.props.history.push(`events/${event.id}`) : this.props.history.push(`groups/${group.id}`);
  }

  handleClick(coords) {
    const newMarker = new google.maps.Marker({
      position: coords,
    });
    if (this.markers.length) {
      this.markers[0].setMap(null);
      this.markers.pop();
    }
    this.markers.push(newMarker);
    newMarker.setMap(this.map);
    this.props.eventAddress(coords);
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

  renderSearchBox() {
    if( !this.props.putMarker ) {
      return (
        <div className="map-search-form">
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
      )
    }
  }

  render() {
    return (
      <div className="map-search">
        { this.renderSearchBox() }
        <div className="map-container">
          <div className="map" ref="map">
            Map
          </div>
        </div>
      </div>
    )
  }
}

export default withRouter(Map);
