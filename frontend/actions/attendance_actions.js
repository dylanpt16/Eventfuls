import * as APIUtil from '../util/attendance_api_util';

export const RECEIVE_ATTENDANCES = 'RECEIVE_ATTENDANCES';
export const RECEIVE_ATTENDANCE = 'RECEIVE_ATTENDANCE';

export const receiveAttendances = attendances => ({
  type: RECEIVE_ATTENDANCES,
  attendances
});

export const receiveAttendance = attendance => ({
  type: RECEIVE_ATTENDANCE,
  attendance
});

export const destroyAttendance = attendance => dispatch => (
  APIUtil.destroyAttendance(attendance).then(
    attendances => (dispatch(receiveAttendances(attendances)))
  )
);

export const createAttendance = attendance => dispatch => (
  APIUtil.createAttendance(attendance).then(
    attendance => (dispatch(receiveAttendance(attendance)))
  )
);

export const fetchAttendances = data => dispatch => (
  APIUtil.fetchAttendances(data).then(
    attendances => dispatch(receiveAttendances(attendances, data))
  )
);

