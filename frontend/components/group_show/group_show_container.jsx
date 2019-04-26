import { connect } from 'react-redux';

import { selectGroup } from '../../reducers/selectors';
import {
  fetchGroup,
  createMembership,
  destroyMembership
} from '../../actions/group_actions';
import GroupShow from './group_show';

const mapStateToProps = (state, { match }) => {
  const groupId = parseInt(match.params.groupId);
  const group = selectGroup(state.entities, match.params.groupId);
  return {
    groupId,
    group,
  };
};

const mapDispatchToProps = dispatch => ({
  fetchGroup: (id) => dispatch(fetchGroup(id)),
  createMembership: membership => dispatch(createMembership(membership)),
  destroyMembership: membership => dispatch(destroyMembership(membership))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupShow);
