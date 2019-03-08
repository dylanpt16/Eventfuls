import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: '',
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.guestLogin = this.guestLogin.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/');
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user= this.state;
    this.props.processForm({user});
  }

  guestLogin(e) {
    e.preventDefault();
    this.props.loginGuest();
  }

  renderErrors() {
    return(
      <ul className="session-form-errors">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return(
      <div className="session-form-container">
        <form onSubmit={this.handleSubmit} className="session-form-box">
          <h1 className="session-form-welcome">Welcome to Eventfuls!</h1>
          { this.renderErrors() }
          <br/>
          <h1 className="session-form-directions">Enter Your Username and Password</h1>
          <div className="session-form">
            <br/>
            <input type="text"
              value={this.state.username}
              onChange={this.update('username')}
              placeholder="Username"
              className="session-input"
            />
            <br/>
            <input type="password"
              value={this.state.password}
              onChange={this.update('password')}
              placeholder="Password"
              className="session-input"
            />
            <br/>
          <button
            onClick={this.handleSubmit}
            className="session-input-submit">{this.props.formType}</button>
          </div>
        </form>
        <div>
          <h1>or</h1>
          <button
            onClick={this.guestLogin}
            className="guest-login-button">Login As Guest</button>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);
