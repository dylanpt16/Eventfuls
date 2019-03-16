import {
  RECEIVE_EVENT,
  RECEIVE_EVENT_ERRORS
} from '../actions/event_actions';

const eventErrorsReducer = (oldState = [], action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_EVENT:
      return [];
    case RECEIVE_EVENT_ERRORS:
      return action.errors;
    default:
      return oldState;
  }
}

export default eventErrorsReducer;
