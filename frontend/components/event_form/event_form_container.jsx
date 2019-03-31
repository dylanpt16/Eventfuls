import { connect } from 'react-redux';

import { createEvent } from '../../actions/event_actions';
import { createGroup } from '../../actions/group_actions';
import { fetchLocation } from '../../actions/event_actions';
import EventForm from './event_form';

const mapStateToProps = (state, { location }) => {
  const formType = location.pathname.slice(1);
  return ({
    currentUser: state.session.currentUser,
    errors: (formType === 'group') ? state.errors.group : state.errors.event
  });
};

const mapDispatchToProps = (dispatch, { location }) => {
  const formType = location.pathname.slice(1);
  const processForm = (formType === 'group') ? createGroup : createEvent;
  return {
    processForm: data => dispatch(processForm(data)),
    fetchLocation: location => dispatch(fetchLocation(location)),
    formType
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventForm)
