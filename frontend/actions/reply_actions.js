import * as APIUtil from '../util/reply_api_util';

export const RECEIVE_REPLIES = 'RECEIVE_REPLIES';
export const RECEIVE_REPLY = 'RECEIVE_REPLY';

export const receiveReplies = (replies, data) => ({
  type: RECEIVE_REPLIES,
  replies,
  data
});

export const receiveReply = reply => ({
  type: RECEIVE_REPLY,
  reply
});

export const createReply = reply => dispatch => (
  APIUtil.createReply(reply).then(
    reply => dispatch(receiveReply(reply))
  )
);

export const fetchReplies = data => dispatch => (
  APIUtil.fetchReplies(data).then(
    replies => dispatch(receiveReplies(replies, data))
  )
);
