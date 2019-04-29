import { connect } from 'react-redux';

import { createAnnouncement } from '../../actions/announcement_actions';
import AnnouncementForm from './announcement_form';

const mapStateToProps = (state) => ({
  currentUserId: state.session.currentUser.id
});

const mapDispatchToProps = (dispatch) => ({
  createAnnouncement: announcement => dispatch(createAnnouncement(announcement))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AnnouncementForm)
