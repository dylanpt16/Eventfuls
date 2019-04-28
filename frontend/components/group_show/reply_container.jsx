import React from 'react';

import ReplyFormContainer from './reply_form_container';

class ReplyContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      form: false
    }
    this.renderForm = this.renderForm.bind(this);
  }

  renderForm() {
    this.setState(prevState => ({
      form: !prevState.form
    }));
  }

  render() {
    return(
      <div>
        <div>
          <button
            onClick={this.renderForm}
          >toggle</button>
          { this.state.form ? (<ReplyFormContainer announcementId={this.props.announcementId}/>) : (<div></div>)}
        </div>
        <div>
        </div>
      </div>
    );
  }
}

export default ReplyContainer;
