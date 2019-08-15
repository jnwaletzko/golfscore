import * as React from 'react';
import { List, withStyles, createStyles, Theme, Divider } from '@material-ui/core';
import { IHole } from '../../reducers/hole-reducer';
import HoleListItem from './hole-list-item';

const styles = (theme: Theme) => createStyles({
  root: {
    backgroundColor: theme.palette.background.paper,
  },
});

// Create the components interface
interface IProps {
  holes: IHole[];
  classes: {
    root: string
  }
}

class HoleList extends React.Component<IProps> {
  render() {
    const { holes } = this.props;
    const { classes } = this.props;

    return (
      <List className={classes.root}>
        {holes &&
          holes.map(hole => {
            return (
              <div>
                <HoleListItem hole={hole}></HoleListItem>
                <Divider variant="inset" component="li" />
              </div>
              );
            })}
      </List>
    ) 
  }
}

export default withStyles(styles)(HoleList)
