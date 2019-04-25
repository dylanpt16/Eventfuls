import React from 'react';

import MemberIndexItem from './member_index_item';

const MemberIndex = ({ members }) => (
  <div className="member-index">
    <div>
      <h2>Members</h2>
    </div>
    <div>
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
