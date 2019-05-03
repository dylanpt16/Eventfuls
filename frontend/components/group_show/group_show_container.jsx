import { connect } from 'react-redux';

import { selectGroup } from '../../reducers/selectors';
import {
  fetchGroup,
} from '../../actions/group_actions';
import {
  fetchMemberships,
  createMembership,
  destroyMembership
} from '../../actions/membership_actions';
import { asPostArray, asMemberArray } from '../../reducers/selectors';
import GroupShow from './group_show';

const mapStateToProps = (state, { match }) => {
  const groupId = parseInt(match.params.groupId);
  const group = selectGroup(state.entities, match.params.groupId);
  const currentUserId = state.session.currentUser.id;
  const members = asMemberArray(state.entities);
  return {
    groupId,
    group,
    members,
    joined_by_current_user: Boolean(state.entities.memberships[currentUserId]),
  };
};

const mapDispatchToProps = dispatch => ({
  fetchGroupDetails: (id) => {
    dispatch(fetchGroup(id))
    dispatch(fetchMemberships({group_id: id}))
  },
  createMembership: membership => dispatch(createMembership(membership)),
  destroyMembership: membership => dispatch(destroyMembership(membership))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupShow);
