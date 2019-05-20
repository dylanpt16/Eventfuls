import { combineReducers } from 'redux';

import filters from './filters_reducer';
import location from './location_reducer';

export default combineReducers({
  filters,
  location
});
