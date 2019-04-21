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
            <h3>
              {error}
            </h3>
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return(
      <div className="session-form-container">
        <div className="session-form">
          <form onSubmit={this.handleSubmit} className="session-form-box">
            <h2 className="session-form-welcome">Welcome to Eventfuls!</h2>
            { this.renderErrors() }
            <h2 className="session-form-directions">Enter Your Username and Password</h2>
            <div>
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
                id="login-btn"
                className="btn btn-primary btn-lg">{this.props.formType}</button>
            </div>
          </form>
          <div className="guest-login">
            <h3>or</h3>
            <button
              onClick={this.guestLogin}
              id="guest-btn"
              className="btn btn-primary btn-lg">Login As Guest</button>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);
