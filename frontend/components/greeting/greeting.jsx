import React from 'react';
import { Link } from 'react-router-dom';

const navBar = () => (
  <nav className="login-signup">
    <Link to="/login">Login</Link>
    <Link to="/signup">Sign up</Link>
  </nav>
);

const welcomeMessage = ({ currentUser, logout }) => (
	<hgroup className="header-group">
    <h2 className="header-name">Hi, {currentUser.username}!</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
	</hgroup>
);

const Greeting = ({ currentUser, logout }) => (
  currentUser ? welcomeMessage({ currentUser, logout }) : navBar()
);

export default Greeting;
