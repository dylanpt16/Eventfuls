import React from 'react';
import { Link } from 'react-router-dom';

const HeaderLinks = () => (
  <div className="left-header">
    <Link to="/" className="header-link">
      <h1 className="logo">Eventfuls</h1>
    </Link>
    <a href="https://www.linkedin.com/in/dylanpt/">
      <img
        className="profile-img"
        src="http://res.cloudinary.com/dylanpt16/image/upload/v1517625029/3-2-linkedin-download-png-thumb_l2k8hf.png"
        alt="LinkedIn"></img>
    </a>
    <a href="https://github.com/dylanpt16">
      <img
        className="profile-img"
        src="http://res.cloudinary.com/dylanpt16/image/upload/v1517625029/25231_acmils.png"
        alt="Github"></img>
    </a>
  </div>
);

export default HeaderLinks;
