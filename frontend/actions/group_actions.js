import * as APIUtil from '../util/group_api_util';

export const RECEIVE_GROUPS = 'RECEIVE_GROUPS';
export const RECEIVE_GROUP = 'RECEIVE_GROUP';
export const RECEIVE_GROUP_ERRORS = 'RECEIVE_GROUP_ERRORS';
export const RECEIVE_MEMBERSHIP = 'RECEIVE_MEMBERSHIP';

export const receiveGroups = groups => ({
  type: RECEIVE_GROUPS,
  groups
});

export const receiveGroup = group => ({
  type: RECEIVE_GROUP,
  group
});

export const receiveErrors = errors => ({
  type: RECEIVE_GROUP_ERRORS,
  errors
});

export const receiveMembership = group => ({
  type: RECEIVE_MEMBERSHIP,
  group
});

export const destroyMembership = groupId => dispatch => (
  APIUtil.destroyMembership(groupId).then(
    group => (dispatch(receiveMembership(group)))
  )
);

export const createMembership = membership => dispatch => (
  APIUtil.createMembership(membership).then(
    group => (dispatch(receiveMembership(group)))
  )
);

export const fetchGroups = (filters) => dispatch => (
  APIUtil.fetchGroups(filters).then(
    groups => (dispatch(receiveGroups(groups)))
  )
);

export const fetchGroup = (id) => dispatch => (
  APIUtil.fetchGroup(id).then(
    group => (dispatch(receiveGroup(group)))
  )
);

export const createGroup = group => dispatch => (
  APIUtil.createGroup(group).then(
    group => (dispatch(receiveGroup(group))),
    errors => (dispatch(receiveErrors(errors.responseJSON)))
  )
);
