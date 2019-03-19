import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import EventMapContainer from '../event_map/event_map_container';
import Video from '../video/video';

class EventForm extends React.Component {
  constructor(props) {
    super(props);
    this.coords = {};
    this.state = {
      name: '',
      description: '',
      owner_id: this.props.currentUser.id,
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.eventAddress = this.eventAddress.bind(this);
    this.handleCloudinary = this.handleCloudinary.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  eventAddress(address) {
    this.coords = address
  }

  handleCloudinary(e) {
    e.preventDefault();
    cloudinary.openUploadWidget(CLOUDINARY_OPTIONS, (error, results) => {
      if(error)
        console.log(error);
      else
        this.setState({ picture_url: results[0].secure_url });
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const event = Object.assign({}, this.state, this.coords);
    this.props.createEvent({event});
  }

  renderErrors() {
    return(
      <ul className="new-event-form-errors">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    const { name, description } = this.state;

    return (
      <div className="new-event-container">
        <Video />

        <div className="new-event-form">
          <h3 className="new-event-title">Create A Event!</h3>
          { this.renderErrors() }
          <hr />
          <EventMapContainer
            eventAddress={this.eventAddress}
          />
          <div className="event-input-container">
            <label className="event-field-label">What will your Event's name be?</label>
            <br />
            <input
              type="text"
              value={name}
              onChange={this.update('name')}
              className="event-field"
              placeholder="for example: Seattle Coders"
            />
            <br />
            <label className="event-field-label">Describe your Event</label>
            <br />
            <textarea
              value={description}
              onChange={this.update('description')}
              className="event-field"
              placeholder="for example: This meetup group is for who wants to join the IT industry but has zero or very little basic knowledge"
            ></textarea>
            <br/>
            <div className="button-holder">
              <button
                onClick={this.handleCloudinary}
                className="new-event-button"
              >
                Add Event Picture
              </button>
            </div>
            <div className="button-holder">
              <button
                onClick={this.handleSubmit}
                className="new-event-button"
              >
                Submit
              </button>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(EventForm);
