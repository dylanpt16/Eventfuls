import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import moment from 'moment';
import { isEmpty } from 'lodash';
import Datetime from 'react-datetime';
import CalendarBox from '../../util/calendar_box';
import MapContainer from '../map/map';
import AttendanceIndex from './attendance_index';

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

  eventShowShort() {
    const {
      name,
      description,
      picture_url,
      date,
      attendance_count,
      lat,
      lng,
      event_location,
      host,
    } = this.props.event;

    return (
      <div className="row event-info row-eq-height">
        <div className="col-sm-8" id="event-info-left">
          <img className="img-thumbnail" src={picture_url}/>
        </div>
        <div className="col-sm-4" id="event-info-right">
          <span className="event-show-name">
            { name }
          </span>
          <br />
          <span className="event-show-host">
            Hosted by { host }
          </span>
          <br />
          <span className="event-show-time">
            { moment(date).format("HH:mm") }
          </span>
          <br />
          <span className="event-calendar-container">
            <CalendarBox
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
    )
  }

  render() {
    if( !isEmpty(this.props.event) ) {
      const {
        name,
        description,
        picture_url,
        date,
        attendance_count,
        event_location,
        host,
        attendees,
      } = this.props.event;

      return (
        <div className="event-show-container">
          { this.eventShowShort() }
          <div className="row event-details-container">
            <div className="col-sm-4 event-details" id="event-details-left">
              <div className="time event-details">
                <span>
                  <CalendarBox
                    date={ date }
                  />
                </span>
                <div className="time right event-details">
                  { moment(date).format("ddd HH:mm") }
                </div>
              </div>
              <div className="map-event-details">
                <MapContainer
                  center={event_location}
                  putMarker={true}
                />
              </div>
              <div className="attendee-container">
                <AttendanceIndex
                  attendees={attendees}
                />
              </div>
            </div>
            <div className="col-sm-8" id="event-details-right">
              <div>
                <h2 className="event-show-time">
                  Description
                </h2>
              </div>
              <br />
              <p>
                { description }
              </p>
            </div>
          </div>
        </div>
      );
    }else {
      return (
        <div className="event-show-container">
        </div>
      )
    }
  }
}

export default withRouter(EventShow);
