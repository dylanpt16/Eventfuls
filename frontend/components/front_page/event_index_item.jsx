import React from 'react';
import { withRouter } from 'react-router-dom';

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
    const {name, description, picture_url } = this.props.event;
    return (
      <div
        className="event-index-item"
        onClick={this.handleClick}
      >
        <div className="index-item-info">
          <span className="index-item-category">Name:</span>
          <span className="index-item-copy">{name}</span>
          <span className="index-item-category">Description:</span>
          <span className="index-item-copy">{description}</span>
          <img src={picture_url}/>
        </div>
      </div>
    );
  }
}

export default withRouter(EventIndexItem);
