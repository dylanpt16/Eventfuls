import React from 'react';

class ReplyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      content: ''
    }
    this.handleReplyButton = this.handleReplyButton.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleReplyButton(e) {
    e.preventDefault();
    const announcementId = {
      announcement_id: this.props.announcementId
    }
    const reply = Object.assign({}, this.state, announcementId)
    this.props.createReply({reply});
  }

  render() {
    return (
      <div>
        <div>
          <input
            type="text"
            value={this.state.content}
            onChange={this.update('content')}
            placeholder="Add a public reply..."
          />
        </div>
        <div>
          <button
            onClick={this.handleReplyButton}
          >
            Reply
          </button>
        </div>
      </div>
    )
  }
};

export default ReplyForm;
