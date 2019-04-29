import { connect } from 'react-redux';

import {
  fetchAnnouncements,
} from '../../actions/announcement_actions';
import { asPostArray } from '../../reducers/selectors';
import Announcement from './announcement';

const mapStateToProps = (state) => ({
  announcements: asPostArray(state.entities)
});

const mapDispatchToProps = dispatch => ({
  fetchAnnouncements: group_id => dispatch(fetchAnnouncements({group_id}))
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Announcement)
