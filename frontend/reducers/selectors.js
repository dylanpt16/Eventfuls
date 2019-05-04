export const asArray = ({ events }) => (
  Object.keys(events).map(key => events[key])
);

export const asGroupArray = ({ groups }) => (
  Object.keys(groups).map(key => groups[key])
);

export const asAttendeeArray = ({ attendees }) => (
  Object.keys(attendees).map(key => attendees[key])
);

export const asMemberArray = ({ members }) => (
  Object.keys(members).map(key =>members[key])
);

export const asPostArray = ({ announcements }) => (
  Object.keys(announcements).map(key => announcements[key])
);

export const asReplyArray = (replies) => {
  if(replies) {
    return Object.keys(replies).map(key => replies[key])
  }
};

export const selectEvent = ({ events}, id) => {
  const event = events[id] || {};
  return event
};

export const selectGroup = ({ groups }, id) => {
  const group = groups[id] || {};
  return group;
};
