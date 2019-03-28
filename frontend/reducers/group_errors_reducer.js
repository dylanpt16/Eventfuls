import {
  RECEIVE_GROUP,
  RECEIVE_GROUP_ERRORS
} from '../actions/group_actions';

const groupErrorsReducer = (oldState = [], action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_GROUP:
      return [];
    case RECEIVE_GROUP_ERRORS:
      return action.errors;
    default:
      return oldState;
  }
}

export default groupErrorsReducer;
