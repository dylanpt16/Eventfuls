class MarkerManager {
  constructor(map, handleClick){
    this.map = map;
    this.handleClick = handleClick;
    this.markers = {};
  }

  updateMarkers(events){
    const eventsObj = {};
    events.forEach( event => eventsObj[event.id] = event);

    if( this.markers ) {
      Object.keys(this.markers)
        .forEach((eventId) => this.removeMarker(this.markers[eventId]))
    }

    events
      .filter(event => !this.markers[event.id])
      .forEach(newEvent => this.createMarkerFromEvent(newEvent, this.handleClick))
  }

  createMarkerFromEvent(event) {
    const position = new google.maps.LatLng(event.lat, event.lng);
    const marker = new google.maps.Marker({
      position,
      map: this.map,
      eventId: event.id
    });

    marker.addListener('click', () => this.handleClick(event));
    this.markers[marker.eventId] = marker;
  }

  removeMarker(marker) {
    this.markers[marker.eventId].setMap(null);
    delete this.markers[marker.eventId];
  }
}

export default MarkerManager;
