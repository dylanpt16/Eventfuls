import merge from 'lodash/merge';

import {
  RECEIVE_LOCATION
} from '../actions/event_actions';

const defaultLocation = Object.freeze({
  lat: 47.6062095,
  lng: -122.3320708
});

const locationReducer = (oldState = defaultLocation, action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_LOCATION:
      return merge({}, action.currentLocation);
    default:
      return oldState;
  }
};

export default locationReducer;
