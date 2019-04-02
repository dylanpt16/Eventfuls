import { connect } from 'react-redux';

import { selectEvent } from '../../reducers/selectors';
import {
  fetchEvent,
  createAttendance,
  destroyAttendance
} from '../../actions/event_actions';
import EventShow from './event_show';

const mapStateToProps = (state, { match }) => {
  const eventId = parseInt(match.params.eventId);
  const event = selectEvent(state.entities, match.params.eventId);
  return {
    eventId,
    event,
  };
};

const mapDispatchToProps = dispatch => ({
  fetchEvent: (id) => dispatch(fetchEvent(id)),
  createAttendance: eventId => dispatch(createAttendance(eventId)),
  destroyAttendance: eventId => dispatch(destroyAttendance(eventId)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventShow)
