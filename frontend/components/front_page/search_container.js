import { connect } from 'react-redux';

import { asArray, asGroupArray } from '../../reducers/selectors';
import { updateFilter } from '../../actions/filter_actions';
import { fetchLocation } from '../../actions/event_actions';
import Search from './search';

const mapStateToProps = (state) => ({
  events: asArray(state.entities),
  groups: asGroupArray(state.entities),
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

