import React from 'react';
import { withRouter } from 'react-router';

import SlideShow from './slideshow';
import SearchContainer from './search_container';

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
      <div className="front-page">
        <SlideShow />
        <SearchContainer />
      </div>
    );
  }
}

export default withRouter(FrontPage);
