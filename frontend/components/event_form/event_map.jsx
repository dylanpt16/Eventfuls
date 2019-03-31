import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

const getCoordsObj = latLng => ({
  lat: latLng.lat(),
  lng: latLng.lng()
});

class EventMap extends React.Component {
  constructor(props) {
    super(props);
    this.markers = [];
    this.state = {
      center: this.props.center,
      zoom: 13,
      location: '',
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  };

  componentDidMount() {
    const map = this.refs.map;
    const obj = Object.assign({}, this.state);
    delete obj.location;
    this.map = new google.maps.Map(map, this.state);
    this.registerListeners();
  }

  componentDidUpdate() {
    if(this.state.center !== this.props.center) {
      this.map.panTo(this.props.center)
      this.setState({ center: this.props.center})
    }
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

  render() {
    return (
      <div className="map-search-container">
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
        <div className="map-container">
          <div className="map" ref="map">
            Map
          </div>
        </div>
      </div>
    )
  }
}

export default withRouter(EventMap);
