import * as APIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});

export const signup = (user) => (dispatch) => {
  return APIUtil.signup(user).then(
    user => (dispatch(receiveCurrentUser(user))),
    errors => (dispatch(receiveErrors(errors.responseJSON)))
  )
};

export const login = (user) => (dispatch) => {
  return APIUtil.login(user).then(
    user => (dispatch(receiveCurrentUser(user))),
    errors => (dispatch(receiveErrors(errors.responseJSON)))
  )
};

export const logout = () => dispatch => {
  return APIUtil.logout().then(user => (dispatch(receiveCurrentUser(null))));
};

export const loginGuest = () => (dispatch) => {
  return APIUtil.loginGuest().then(
    user => (dispatch(receiveCurrentUser(user))),
    errors => (dispatch(receiveErrors(errors.responseJSON)))
  )
};
