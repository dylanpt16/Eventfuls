import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

const navBar = ({ currentUser, logout }) => {
  if (currentUser) {
    return(
      <ul className="nav navbar-nav navbar-right">
        <li><Link to="/event">Create New Event</Link></li>
        <li><Link to="/group">Create New Group</Link></li>
        <li><a>Hi, {currentUser.username}!</a></li>
        <li>
          <a
            type="button"
            className="btn btn-default"
            onClick={ logout }
          >Log out</a>
        </li>
      </ul>
    );
  }else {
    return(
      <ul className="nav navbar-nav navbar-right">
        <li><Link to="/event">Create New Event</Link></li>
        <li><Link to="/group">Create New Group</Link></li>
        <li>
          <Link to="/login"
            type="button"
            className="btn btn-default"
          >Log in
          </Link>
        </li>
        <li>
          <Link to="/signup"
            type="button"
            className="btn btn-default"
          >Sign up
          </Link>
        </li>
      </ul>
    );
  }
}

const Header = ({ currentUser, logout }) => (
  <div className="container">
    <div className="navbar-header">
      <button
        type="button"
        className="navbar-toggle collapsed"
        data-toggle="collapse"
        data-target="#navbar"
        aria-expanded="false"
        aria-controls="navbar"
      >
        <span className="sr-only">Toggle navigation</span>
        <span className="icon-bar"></span>
        <span className="icon-bar"></span>
        <span className="icon-bar"></span>
      </button>
      <a id="navbar-brand" className="navbar-brand" href="#">Eventfuls</a>
    </div>
    <div id="navbar" className="navbar-collapse collapse" aria-expanded="false">
      <ul className="nav navbar-nav">
        <li>
          <a id="icon-lnkd" href="https://www.linkedin.com/in/dylanpt/">
            <img
              className="profile-icon"
              src="http://res.cloudinary.com/dylanpt16/image/upload/v1517625029/3-2-linkedin-download-png-thumb_l2k8hf.png"
              alt="LinkedIn"></img>
          </a>
        </li>
        <li>
          <a id="icon-gh" href="https://github.com/dylanpt16">
            <img
              className="profile-icon"
              src="http://res.cloudinary.com/dylanpt16/image/upload/v1517625029/25231_acmils.png"
              alt="Github"></img>
          </a>
        </li>
      </ul>
      { navBar({ currentUser, logout }) }
    </div>
  </div>
);

export default withRouter(Header);
