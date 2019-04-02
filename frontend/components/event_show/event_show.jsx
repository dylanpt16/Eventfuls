import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import moment from 'moment';
import Datetime from 'react-datetime';

class EventShow extends React.Component {
  constructor(props) {
    super(props);
    this.handleAttendButton = this.handleAttendButton.bind(this);
  }

  componentWillMount() {
    this.props.fetchEvent(this.props.eventId);
  }

  handleAttendButton(e) {
    e.preventDefault();
    const hasJoined = this.props.event.joined_by_current_user;
    const eventId = this.props.eventId;
    hasJoined ? this.props.destroyAttendance(eventId) : this.props.createAttendance(eventId);
  }

  renderJoinButton() {
    const hasJoined = this.props.event.joined_by_current_user;
    const isOwner = this.props.event.owned_by_current_user;
    if(!isOwner) {
      return (
        <div className="attend-button">
          <button
            className={ hasJoined ? "attended" : "unattended"}
            onClick={this.handleAttendButton}
          >{ !hasJoined ? "Attend!" : "Unattend!"}
          </button>
        </div>
      );
    }
  }

  render() {
    const {name, description, picture_url, date } = this.props.event;

    return (
      <div>
        <div className="event-show-info">
          <div className="event-show-left">
            <img src={picture_url}/>
          </div>
          <div className="event-show-right">
            <span className="event-show-name">
              { name }
            </span>
            <br />
            <span className="event-show-time">
              { moment(date).format("HH:mm:ss") }
            </span>
            <br />
            { this.renderJoinButton() }
          </div>
        </div>
        <hr />
        <div>
        </div>
      </div>
    );
  }
}

export default withRouter(EventShow);
