import * as APIUtil from '../util/announcement_api_util';

export const RECEIVE_ANNOUNCEMENTS = "RECEIVE_ANNOUNCEMENTS";
export const RECEIVE_ANNOUNCEMENT = "RECEIVE_ANNOUNCEMENT";

export const receiveAnnouncement = announcement => ({
  type: RECEIVE_ANNOUNCEMENT,
  announcement
});

export const receiveAnnouncements = announcements => ({
  type: RECEIVE_ANNOUNCEMENTS,
  announcements
});

export const createAnnouncement = announcement => dispatch => (
  APIUtil.createAnnouncement(announcement).then(
    announcement => (dispatch(receiveAnnouncement(announcement))
    ))
);

export const fetchAnnouncements = (data) => dispatch => (
  APIUtil.fetchAnnouncements(data).then(
    announcements => (dispatch(receiveAnnouncements(announcements)))
  )
);
