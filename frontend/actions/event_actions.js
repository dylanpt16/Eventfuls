import * as APIUtil from '../util/event_api_util';

export const RECEIVE_EVENTS = 'RECEIVE_EVENTS';
export const RECEIVE_EVENT = 'RECEIVE_EVENT';

export const RECEIVE_LOCATION = 'RECEIVE_LOCATION';
export const RECEIVE_EVENT_ERRORS = 'RECEIVE_EVENT_ERRORS';

export const RECEIVE_ATTENDANCE = "RECEIVE_ATTENDANCE";
export const REMOVE_ATTENDANCE = "REMOVE_ATTENDANCE";

export const receiveAttendance = attendance => ({
  type: RECEIVE_ATTENDANCE,
  attendance
});

export const removeAttendance = id => ({
  type: REMOVE_ATTENDANCE,
  id
});

export const receiveEvents = events => ({
  type: RECEIVE_EVENTS,
  events
});

export const receiveEvent = event => ({
  type: RECEIVE_EVENT,
  event
});

export const receiveErrors = errors => ({
  type: RECEIVE_EVENT_ERRORS,
  errors
});

export const receiveLocation = currentLocation=> ({
  type: RECEIVE_LOCATION,
  currentLocation
})

export const createAttendance = eventId => dispatch => (
  APIUtil.createAttendance(eventId).then(
    event => (dispatch(receiveEvent(event)))
  )
);

export const destroyAttendance = eventId => dispatch => (
  APIUtil.destroyAttendance(eventId).then(
    event => (dispatch(receiveEvent(event)))
  )
);

export const fetchEvents = (filters) => dispatch => (
  APIUtil.fetchEvents(filters).then(
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
    event => (dispatch(receiveEvent(event))),
    errors => (dispatch(receiveErrors(errors.responseJSON)))
  )
);

export const fetchLocation = location => dispatch => (
  APIUtil.fetchLocation(location).then(
    response => dispatch(
      receiveLocation(response.results["0"].geometry.location))
  )
);
