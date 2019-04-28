import merge from 'lodash/merge';
import extend from 'lodash/extend';

import {
  RECEIVE_GROUPS,
  RECEIVE_GROUP,
  RECEIVE_ANNOUNCEMENT,
  RECEIVE_MEMBERSHIP,
  RECEIVE_REPLY,
} from '../actions/group_actions';

const groupsReducer = (state = {}, action) => {
  Object.freeze(state)
  let newState = merge({}, state);
  let newGroup;

  switch(action.type) {
    case RECEIVE_GROUPS:
      return action.groups;
    case RECEIVE_GROUP:
      newGroup = {[action.group.id]: action.group};
      return merge({}, newState, newGroup);
    case RECEIVE_ANNOUNCEMENT:
      const announcement = action.announcement;
      newState[announcement.group_id].announcements.push(announcement);
      return newState;
    case RECEIVE_MEMBERSHIP:
      newGroup = {[action.group.id]: action.group};
      return extend({}, newState, newGroup);
    case RECEIVE_REPLY:
      return merge({}, newState, newGroup);
    default:
      return state;
  }
};

export default groupsReducer;
