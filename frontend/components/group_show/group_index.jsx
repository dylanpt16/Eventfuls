import React from 'react';
import GroupIndexItem from './group_index_item';

const noGroup = () => (
  <div>
    <h1>No results!</h1>
    <h2>Try adjusting your map search</h2>
  </div>
);

const renderGroup = ({ groups }) => (
  <div className="map-search-results-container">
    <h1>Groups Around You ({ groups.length }): </h1>
    <div className="map-search-results">
      {groups.map(group => (
        <GroupIndexItem
          group={group}
          key={group.id}
        />
      ))}
    </div>
  </div>
);

const GroupIndex = ({ groups }) => {
  if (groups.length) {
    return renderGroup({ groups });
  } else {
    return noGroup();
  }
};

export default GroupIndex;
