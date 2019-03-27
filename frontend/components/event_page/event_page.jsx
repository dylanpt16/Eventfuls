import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

class EventPage extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    debugger
  }

  render() {
    return (
      <div>
        <h1>Hi</h1>
      </div>
    );
  }
}

export default withRouter(EventPage);
