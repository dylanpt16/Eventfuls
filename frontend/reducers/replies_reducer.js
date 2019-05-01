import merge from 'lodash/merge';
import { isEmpty } from 'lodash';

import {
  RECEIVE_REPLIES,
  RECEIVE_REPLY
} from '../actions/reply_actions';

const repliesReducer = (state = {}, action) => {
  Object.freeze(state)
  let newState = merge({}, state);

  switch(action.type) {
    case RECEIVE_REPLIES:
      const newReplies = !isEmpty(action.replies) ? {[action.data.announcement_id]: action.replies} : {};
      return merge({}, newState, newReplies);
    case RECEIVE_REPLY:
      const reply = action.reply;
      const newReply = {[reply.announcement_id] : {[reply.id]: reply}}
      return merge({}, newState, newReply);
    default:
      return state;
  }
};

export default repliesReducer;
