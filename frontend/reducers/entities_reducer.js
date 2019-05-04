import { combineReducers } from 'redux';

import events from './events_reducer';
import groups from './groups_reducer';
import members from './memberships_reducer';
import attendees from './attendances_reducer';
import announcements from './announcements_reducer';
import replies from './replies_reducer';

export default combineReducers({
  events,
  groups,
  members,
  attendees,
  announcements,
  replies,
});
