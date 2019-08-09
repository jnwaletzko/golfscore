import * as React from 'react';
import { Grid } from '@material-ui/core';
import { IHole } from '../reducers/holeReducer';

// Create the components interface
interface IProps {
  holes: IHole[];
}

class HoleList extends React.Component<IProps> {
  render() {
    const { holes } = this.props;

    return (
      <Grid container>
        {holes &&
          holes.map(hole => {
            return (
              <Grid item xs={1}>
                <div>
                  {hole.number}
                </div>
              </Grid>
            );
          })}
      </Grid>
    )
  }
}

export default HoleList
