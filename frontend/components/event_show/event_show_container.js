import { connect } from 'react-redux';

import {
  selectEvent,
  asAttendeeArray
} from '../../reducers/selectors';
import {
  fetchEvent,
} from '../../actions/event_actions';
import {
  fetchAttendances,
  createAttendance,
  destroyAttendance
} from '../../actions/attendance_actions';
import EventShow from './event_show';

const mapStateToProps = (state, { match }) => {
  const eventId = parseInt(match.params.eventId);
  const event = selectEvent(state.entities, match.params.eventId);
  const currentUserId = state.session.currentUser.id;
  const attendees = asAttendeeArray(state.entities);
  return {
    eventId,
    event,
    attendees,
    joined_by_current_user: Boolean(state.entities.attendees[currentUserId]),
  };
};

const mapDispatchToProps = dispatch => ({
  fetchEventDetails: (id) => {
    dispatch(fetchEvent(id))
    dispatch(fetchAttendances({event_id: id}))
  },
  createAttendance: attendance => dispatch(createAttendance(attendance)),
  destroyAttendance: attendance => dispatch(destroyAttendance(attendance)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventShow)
