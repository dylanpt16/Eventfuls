import { connect } from 'react-redux';

import {
  fetchReplies,
  createReply
} from '../../actions/reply_actions';
import {
  asReplyArray,
} from '../../reducers/selectors';
import Reply from './reply';

const mapStateToProps = ({entities}, {announcementId}) => ({
  replies: asReplyArray(entities.replies[announcementId])
});

const mapDispatchToProps = dispatch => ({
  fetchReplies: announcement_id => dispatch(fetchReplies({announcement_id})),
  createReply: reply => dispatch(createReply(reply))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Reply);
