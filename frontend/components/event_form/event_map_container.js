import { connect } from 'react-redux';
import { fetchLocation } from '../../actions/event_actions';

import EventMap from './event_map';

const mapStateToProps = (state) => ({
  center: state.location
});

export default connect(
  mapStateToProps,
  null
)(EventMap)
