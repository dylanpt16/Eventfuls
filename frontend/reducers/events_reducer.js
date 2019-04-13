import merge from 'lodash/merge';

import {
  RECEIVE_EVENTS,
  RECEIVE_EVENT,
  REMOVE_ATTENDANCE,
} from '../actions/event_actions';

const eventsReducer = (state = {}, action) => {
  Object.freeze(state)
  let newState = merge({}, state);
  let newEvent;

  switch(action.type) {
    case RECEIVE_EVENTS:
      return action.events;
    case RECEIVE_EVENT:
      newEvent = {[action.event.id]: action.event};
      return merge({}, state, newEvent);
    case REMOVE_ATTENDANCE:
      newEvent = {[action.event.id]: action.event};
      return newEvent;
    default:
      return state;
  }
};

export default eventsReducer;
