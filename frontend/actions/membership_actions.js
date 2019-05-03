import * as APIUtil from '../util/membership_api_util';

export const RECEIVE_MEMBERSHIPS = 'RECEIVE_MEMBERSHIPS';
export const RECEIVE_MEMBERSHIP = 'RECEIVE_MEMBERSHIP';

export const receiveMemberships = memberships => ({
  type: RECEIVE_MEMBERSHIPS,
  memberships
});

export const receiveMembership = membership => ({
  type: RECEIVE_MEMBERSHIP,
  membership
});

export const destroyMembership = membership => dispatch => (
  APIUtil.destroyMembership(membership).then(
    memberships => (dispatch(receiveMemberships(memberships)))
  )
);

export const createMembership = membership => dispatch => (
  APIUtil.createMembership(membership).then(
    membership => (dispatch(receiveMembership(membership)))
  )
);

export const fetchMemberships = data => dispatch => (
  APIUtil.fetchMemberships(data).then(
    memberships => dispatch(receiveMemberships(memberships, data))
  )
);
