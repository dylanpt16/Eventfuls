import React from 'react';
import { withRouter } from 'react-router-dom';

import moment from 'moment';

class EventIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    const eventId = this.props.event.id;
    this.props.history.push(`/events/${eventId}`);
  }

  render() {
    const {name, description, picture_url, date } = this.props.event;
    return (
      <div
        className="event-index-item"
        onClick={this.handleClick}
      >
        <div className="index-item-info">
          <span className="index-item-name">{name}</span>
          <br />
          <span className="index-item-copy">
            { moment(date).format("YYYY-MM-DD HH:mm:ss") }
          </span>
          <img src={picture_url}/>
        </div>
      </div>
    );
  }
}

export default withRouter(EventIndexItem);
