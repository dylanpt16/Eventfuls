import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

class EventForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      description: '',
      owner_id: this.props.currentUser.id
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const event = this.state;
    this.props.createEvent({event});
  }

  render() {
    const { name, description } = this.state;

    return (
      <div className="new-event-container">
        <div className="new-event-form">
          <h3 className="new-event-title">Create A Event!</h3>

          <form onSubmit={this.handleSubmit}>
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
