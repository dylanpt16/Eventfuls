import { connect } from 'react-redux';
import { fetchLocation } from '../../actions/event_actions';

import EventMap from './event_map';

const mapStateToProps = (state) => ({
  center: state.location
});

const mapDispatchToProps = (dispatch) => ({
  fetchLocation: location => dispatch(fetchLocation(location))
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventMap)
