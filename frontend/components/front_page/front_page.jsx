import React from 'react';
import { withRouter } from 'react-router';

import SlideShow from './slideshow';

class FrontPage extends React.Component {
  constructor(props) {
    super(props);
    this.navigateToSignup = this.navigateToSignup.bind(this);
  }

  navigateToSignup() {
    this.props.history.push('/signup');
  }

  render() {
    return (
      <div className="slideshow-container">
        <h1>Eventfuls</h1>
        <SlideShow />
      </div>
    );
  }
}

export default withRouter(FrontPage);
