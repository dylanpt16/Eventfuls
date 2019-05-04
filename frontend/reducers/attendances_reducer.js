import merge from 'lodash/merge';

import {
  RECEIVE_ATTENDANCES,
  RECEIVE_ATTENDANCE
} from '../actions/attendance_actions';

const attendancesReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);

  switch(action.type) {
    case RECEIVE_ATTENDANCES:
      return action.attendances ? action.attendances : null ;
    case RECEIVE_ATTENDANCE:
      const newAttendance = {[action.attendance.user_id]: action.attendance};
      return merge({}, newState, newAttendance);
    default:
      return state;
  }
};

export default attendancesReducer;
