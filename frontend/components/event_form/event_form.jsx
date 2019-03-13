import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import EventMapContainer from '../event_map/event_map_container';

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
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  eventAddress(address) {
    this.coords = address
  }

  handleSubmit(e) {
    e.preventDefault();
    const event = Object.assign({}, this.state, this.coords);
    this.props.createEvent({event});
  }

  render() {
    const { name, description } = this.state;

    return (
      <div className="new-event-container">
        <div className="new-event-form">
          <h3 className="new-event-title">Create A Event!</h3>

          <form onSubmit={this.handleSubmit}>
            <EventMapContainer
              eventAddress={this.eventAddress}
            />
            <label className="event-field">Name</label>
            <input
              type="textarea"
              value={name}
              onChange={this.update('name')}
              className="event-field"
            />
            <label className="event-field">Description</label>
            <input
              type="textarea"
              value={description}
              onChange={this.update('description')}
              className="event-field"
            />
            <br/>
            <input type="submit" value="Submit" />
          </form>
        </div>
      </div>
    );
  }
}

export default withRouter(EventForm);
