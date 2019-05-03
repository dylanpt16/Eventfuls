import merge from 'lodash/merge';

import {
  RECEIVE_MEMBERSHIPS,
  RECEIVE_MEMBERSHIP
} from '../actions/membership_actions';

const membershipsReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);

  switch(action.type) {
    case RECEIVE_MEMBERSHIPS:
      return action.memberships ? action.memberships : null ;
    case RECEIVE_MEMBERSHIP:
      const newMembership = {[action.membership.user_id]: action.membership};
      return merge({}, newState, newMembership);
    default:
      return state;
  }
};

export default membershipsReducer;
