import React from 'react';

import ReplyIndex from './reply_index';

class Reply extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      formRendered: false,
      replyHidden: true,
      content: ''
    }
    this.toggleForm = this.toggleForm.bind(this);
    this.handleReplyButton = this.handleReplyButton.bind(this);
  }

  componentWillMount() {
    this.props.fetchReplies(this.props.announcementId);
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
    this.setState(prevState => ({
      formRendered: !prevState.formRendered
    }));
  }

  toggleForm() {
    this.setState(prevState => ({
      formRendered: !prevState.formRendered
    }));
  }

  toggleReplies() {
    this.setState(prevState => ({
      replyHidden: !prevState.replyHidden
    }));
  }

  renderForm() {
    return (
      <div className="reply-form-container">
        <input
          type="text"
          value={this.state.content}
          onChange={this.update('content')}
          placeholder="Add a public reply..."
        />
        <button
          onClick={this.handleReplyButton}
          className="btn btn-outline-danger"
        >
          Reply
        </button>
      </div>
    )
  }

  renderReplies() {
    if (!this.state.replyHidden) {
      return <ReplyIndex replies={this.props.replies}/>
    }
  }

  showReplyButton() {
    if(this.state.replyHidden) {
      return <button
        onClick={this.toggleReplies.bind(this)}
        className="btn btn-outline-danger"
      >Show replies...</button>
    }else {
      return <button
        onClick={this.toggleReplies.bind(this)}
        className="btn btn-outline-danger"
      >Hide replies...</button>
    }
  }

  render() {
    return(
      <div className="reply-container">
        <div className="button-container">
          <button
            type="button"
            onClick={this.toggleForm}
            className="btn btn-outline-danger"
          >Reply</button>
          { this.props.replies ? this.showReplyButton() : null}
        </div>
        { this.state.formRendered ? this.renderForm() : null}
        {this.renderReplies()}
      </div>
    );
  }
}

export default Reply;
