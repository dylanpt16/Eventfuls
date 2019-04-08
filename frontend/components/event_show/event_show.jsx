import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import moment from 'moment';
import Datetime from 'react-datetime';
import CalendarBox from '../../util/calendar_box';
import Map from '../map/map';

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
    const {
      name,
      description,
      picture_url,
      date,
      attendance_count,
      lat,
      lng,
      event_location,
    } = this.props.event;

    return (
      <div className="event-show-container">
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
            <span className="event-show-date">
              <CalendarBox
                day={ moment(date).date() }
                month={ moment(date).month() }
                date={ date }
              />
            </span>
            <br />
            <span className="event-show-people">
              { attendance_count } people going
            </span>
            <br />
            { this.renderJoinButton() }
          </div>
        </div>
        <div className="event-show-details">
          <div className="event-show-description">
            <section>Description</section>
            <section>{ description }</section>
          </div>
          <div className="event-show-map">
            <section>Description</section>
            <section>{ description }</section>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(EventShow);
