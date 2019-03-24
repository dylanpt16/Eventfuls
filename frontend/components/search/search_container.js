import { connect } from 'react-redux';

import { updateFilter } from '../../actions/filter_actions';
import { fetchLocation } from '../../actions/event_actions';
import Search from './search';

const mapStateToProps = (state) => ({
  center: state.location
});

const mapDispatchToProps = (dispatch) => ({
  updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
  fetchLocation: location => dispatch(fetchLocation(location))
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Search)

