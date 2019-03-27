import { connect } from 'react-redux';

import { selectEvent } from '../../reducers/selectors';
import EventPage from './event_page';

const mapStateToProps = (state, { match }) => {
  const event = selectEvent(state.entities, match.params.eventId);
  return {
    event
  };
};

export default connect(
  mapStateToProps,
  null
)(EventPage)
