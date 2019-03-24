import React from 'react';
import ReactDOM from 'react-dom';
import { withRouter } from 'react-router-dom';

import MarkerManager from '../../util/marker_manager';

const getCoordsObj = latLng => ({
  lat: latLng.lat(),
  lng: latLng.lng()
});

class Map extends React.Component {
  constructor(props){
    super(props);
    this.marker = [];
  }

  componentDidMount() {
    const mapOptions = {
      center: this.props.center, // this is SF
      zoom: 15
    };
    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.registerListeners();
  }

  componentDidUpdate() {
    this.map.panTo(this.props.center)
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
    if (this.marker.length) {
      this.marker[0].setMap(null);
      this.marker.pop();
    }
    this.marker.push(newMarker);
    newMarker.setMap(this.map);
    this.props.eventAddress(coords);
  }

  render() {
    return (
      <div className="map" ref={ map => this.mapNode = map }>
      </div>
    )
  }
}

export default withRouter(Map);
