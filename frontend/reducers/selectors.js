export const asArray = ({ events }) => (
  Object.keys(events).map(key => events[key])
);

export const asGroupArray = ({ groups }) => (
  Object.keys(groups).map(key => groups[key])
);

export const selectEvent = ({ events}, id) => {
   const event = events[id] || {};
   return event
};

export const selectGroup = ({ groups }, id) => {
   const group = groups[id] || {};
   return group;
};
