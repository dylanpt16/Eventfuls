import React from 'react';
import { withRouter } from 'react-router';

class GroupIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    const groupId = this.props.group.id;
    this.props.history.push(`/groups/${groupId}`);
  }

  render() {
    const {name, description, picture_url} = this.props.group;
    return (
      <div
        className="group-index-item"
        onClick={this.handleClick}
      >
        <div className="index-item-info">
          <span className="index-item-name">{name}</span>
          <br />
          <span className="index-item-copy">
          </span>
          <img src={picture_url}/>
        </div>
      </div>
    );
  }
}

export default withRouter(GroupIndexItem);
