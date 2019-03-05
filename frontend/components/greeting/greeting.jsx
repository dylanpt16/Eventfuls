import React from 'react';
import { Link } from 'react-router-dom';

const navBar = () => (
  <ul className="right-header-guest">
    <li className="create-event-label">
      <Link to="/events/new">Create New Event</Link>
    </li>
    <li className="login-signup">
      <Link to="/login">Login</Link>
      <Link to="/signup">Sign up</Link>
    </li>
  </ul>
);

const welcomeMessage = ({ currentUser, logout }) => (
  <ul className="right-header-logged-in">
    <li className="create-event-label">
      <Link to="/events/new">Create New Event</Link>
    </li>
    <li>
      <hgroup className="header-group">
        <h2 className="header-name">Hi, {currentUser.username}!</h2>
        <button className="header-button" onClick={logout}>Log Out</button>
      </hgroup>
    </li>
  </ul>
);

const Greeting = ({ currentUser, logout }) => (
  currentUser ? welcomeMessage({ currentUser, logout }) : navBar()
);

export default Greeting;
