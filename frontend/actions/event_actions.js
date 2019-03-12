import * as APIUtil from '../util/event_api_util';

export const RECEIVE_EVENTS = 'RECEIVE_EVENTS';
export const RECEIVE_EVENT = 'RECEIVE_EVENT';
export const RECEIVE_LOCATION = 'RECEIVE_LOCATION';

export const receiveEvents = events => ({
  type: RECEIVE_EVENTS,
  events
});

export const receiveEvent = event => ({
  type: RECEIVE_EVENT,
  event
});

export const receiveLocation = currentLocation=> ({
  type: RECEIVE_LOCATION,
  currentLocation
})

export const fetchEvents = () => dispatch => (
  APIUtil.fetchEvents().then(
    events => (dispatch(receiveEvents(events)))
  )
);

export const fetchEvent = (id) => dispatch => (
  APIUtil.fetchEvent(id).then(
    event => (dispatch(receiveEvent(event)))
  )
);

export const createEvent = event => dispatch => (
  APIUtil.createEvent(event).then(
    event => (dispatch(receiveEvent(event)))
  )
);

export const fetchLocation = location => dispatch => (
  APIUtil.fetchLocation(location).then(
    response => dispatch(
      receiveLocation(response.results["0"].geometry.location))
  )
);
