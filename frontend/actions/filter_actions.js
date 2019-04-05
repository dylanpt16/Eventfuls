import { fetchEvents } from './event_actions';
import { fetchGroups } from './group_actions';

export const UPDATE_FILTER = 'UPDATE_FILTER';

export const changeFilter = (filter, value) => ({
  type: UPDATE_FILTER,
  filter,
  value
});

export const updateFilter = (filter, value) => (dispatch, getState) => {
  dispatch(changeFilter(filter, value));
  fetchGroups(getState().ui.filters)(dispatch);
  return fetchEvents(getState().ui.filters)(dispatch);
};
