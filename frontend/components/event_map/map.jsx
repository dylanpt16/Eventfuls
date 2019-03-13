import React from 'react';
import ReactDOM from 'react-dom';
import { withRouter } from 'react-router-dom';

const getCoordsObj = latLng => ({
  lat: latLng.lat(),
  lng: latLng.lng()
});

class Map extends React.Component {
  componentDidMount() {
    const mapOptions = {
      center: this.props.center, // this is SF
      zoom: 13
    };
    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.registerListeners();
  }

  componentDidUpdate() {
    this.map.panTo(this.props.center)
  }

  registerListeners() {
    google.maps.event.addListener(this.map, 'click', (event) => {
      const coords = getCoordsObj(event.latLng);
      this.handleClick(coords);
    });
  }

  handleClick(coords) {
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
