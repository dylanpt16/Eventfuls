import React from 'react';

const MemberIndexItem = ({ member }) => (
  <div className="row row-eq-height">
    <div className="col-sm-5 user-img">
      <img className="user-img" src={member.picture_url} />
    </div>
    <div className="col-sm-7">
      {member.name}
    </div>
  </div>
);

export default MemberIndexItem;
