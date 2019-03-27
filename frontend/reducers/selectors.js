export const asArray = ({ events }) => (
  Object.keys(events).map(key => events[key])
);

export const selectEvent = ({ events}, id) => {
   const event = events[id] || {};
   return event
};
