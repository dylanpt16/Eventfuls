import React from 'react';

import MemberIndexItem from './member_index_item';

const MemberIndex = ({ members }) => (
  <div className="member-container">
    <h2>Members ({members.length})</h2>
    <div className="member-index">
      { members.map( member => (
        <MemberIndexItem
          member={member}
          key={member.id}
        />
      ))}
    </div>
  </div>
)

export default MemberIndex;
