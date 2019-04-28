import merge from 'lodash/merge';
import extend from 'lodash/extend';

import {
  RECEIVE_ANNOUNCEMENTS,
  RECEIVE_ANNOUNCEMENT,
} from '../actions/announcement_actions';

const announcementsReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);

  switch(action.type) {
    case RECEIVE_ANNOUNCEMENTS:
      return action.announcements;
    case RECEIVE_ANNOUNCEMENT:
      const newAnnouncement = {[action.announcement.id]: action.announcement};
      return merge({}, newState, newAnnouncement);;
    default:
      return state;
  }
};

export default announcementsReducer;
