import { connect } from 'react-redux';

import {
  createReply
} from '../../actions/group_actions';
import ReplyForm from './reply_form';

const mapDispatchToProps = dispatch => ({
  createReply: reply => dispatch(createReply(reply))
});

export default connect(
  null,
  mapDispatchToProps
)(ReplyForm);
