import * as React from 'react';
import { ListItem, ListItemText, ListItemAvatar, Avatar, Typography } from '@material-ui/core';
import { IHole } from '../../reducers/hole-reducer';
import GolfCourseOutlined from '@material-ui/icons/GolfCourseOutlined';

// Create the components interface
interface IProps {
  hole: IHole;
}

class HoleListItem extends React.Component<IProps> {
  render() {
    const { hole } = this.props;

    return (
      <ListItem>
        <ListItemAvatar>
          <Avatar>
            <GolfCourseOutlined color="primary"></GolfCourseOutlined>
          </Avatar>
        </ListItemAvatar>
        <ListItemText primary={hole.number} secondary={`Handicap ${hole.handicap}`} />
        <ListItemText
          primary={`Par ${hole.par} ${hole.yardage} yards`}
        />
      </ListItem>
    )
  }
}

export default HoleListItem
