import { connect } from 'react-redux';

import { selectGroup } from '../../reducers/selectors';
import {
  fetchGroup,
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
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupShow);
