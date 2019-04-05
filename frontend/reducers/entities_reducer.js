import { combineReducers } from 'redux';

import events from './events_reducer';
import groups from './groups_reducer';

export default combineReducers({
  events,
  groups,
});
