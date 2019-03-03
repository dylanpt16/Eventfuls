import { connect } from 'react-redux';
import { login, signup, logout } from '../../actions/session_actions';

import SessionForm from './session_form';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.errors.session
});

const mapDispatchToProps = (dispatch, { location }) => {
  const formType = location.pathname.slice(1);
  const processForm = (formType === 'login') ? login : signup;
  const demoLogin = login;
  return {
    processForm: user => dispatch(processForm(user)),
    demoLogin: user => dispatch(demoLogin(user)),
    formType
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
