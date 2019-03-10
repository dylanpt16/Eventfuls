import merge from 'lodash/merge';

import {
  RECEIVE_EVENTS,
  RECEIVE_EVENT
} from '../actions/event_actions';

const eventsReducer = (state = {}, action) => {
  Object.freeze(state)
  let newState = merge({}, state);

  switch(action.type) {
    case RECEIVE_EVENTS:
      return action.events;
    case RECEIVE_EVENT:
      const newevent = {[action.event.id]: action.event};
      return merge({}, state, newevent);
    default:
      return state;
  }
};

export default eventsReducer;
