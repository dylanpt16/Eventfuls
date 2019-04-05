import merge from 'lodash/merge';

import {
  RECEIVE_GROUPS,
  RECEIVE_GROUP
} from '../actions/group_actions';

const groupsReducer = (state = {}, action) => {
  Object.freeze(state)
  let newState = merge({}, state);

  switch(action.type) {
    case RECEIVE_GROUPS:
      return action.groups;
    case RECEIVE_GROUP:
      const newGroup = {[action.group.id]: action.group};
      delete newState[action.group.id]
      return merge({}, newState, newGroup);
    default:
      return state;
  }
};

export default groupsReducer;
