import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';
import { isEmpty } from 'lodash';
import MemberIndex from './member_index';
import AnnouncementContainer from '../announcement/announcement_container';

class GroupShow extends React.Component {
  constructor(props) {
    super(props);
    this.handleJoin = this.handleJoin.bind(this);
  }

  componentWillMount() {
    this.props.fetchGroupDetails(this.props.groupId);
  }

  handleJoin(e) {
    e.preventDefault();
    const membership = { group_id: this.props.groupId };
    if (!this.props.joined_by_current_user) {
      this.props.createMembership({membership});
    }else {
      this.props.destroyMembership({membership});
    }
  }

  renderGroupInfo() {
    const {
      name,
      picture_url,
      owner,
    } = this.props.group;

    const hasJoined = this.props.joined_by_current_user;

    return(
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
            Organizer: { owner }
          </span>
          <br />
          <div className="attend-button">
            <button
              className={ hasJoined ? "attended" : "unattended"}
              onClick={this.handleJoin}
            >{ !hasJoined ? "Subscribe!" : "Unsubscribe"}
            </button>
          </div>
        </div>
      </div>
    );
  }

  renderGroupDetails() {
    const { members } = this.props;

    return(
      <div className="row event-details-container">
        <div className="col-sm-4 event-details" id="event-details-left">
          <AnnouncementContainer
            group={this.props.group}
            groupId={this.props.groupId}
          />
          <MemberIndex
            members={members}
          />
        </div>
        <div className="col-sm-8" id="event-details-right">
          <div>
            <h2 className="event-show-time">
              Description
            </h2>
          </div>
        </div>
      </div>
    );
  }

  render() {
    if( !isEmpty(this.props.group) ) {
      return (
        <div className="group-show-container">
          { this.renderGroupInfo() }
          { this.renderGroupDetails() }
        </div>
      );
    }else {
      return (
        <div className="group-show-container">
        </div>
      )
    }
  }
}

export default withRouter(GroupShow);
