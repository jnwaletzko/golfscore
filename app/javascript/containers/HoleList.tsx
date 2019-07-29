import * as React from 'react';
import { connect } from 'react-redux';

import { IAppState } from '../store/Store';

import { IHole } from '../reducers/holeReducer';
import { Box, GridListTile, Grid, Theme, Container } from '@material-ui/core';
import { makeStyles, createStyles } from '@material-ui/styles';

// Create the containers interface
interface IProps {
  holes: IHole[];
}

class HoleList extends React.Component<IProps> {
  public render() {
    const { holes } = this.props;

    return (
      <Container fixed>
        Them holes
        {holes &&
          holes.map(hole => {
            return (
              <Grid container>
                <Grid item xs={1}>
                  <div>
                    {hole.number}
                  </div>
                </Grid>
              </Grid>
            );
          })}
      </Container>
    );
  }
}

// Grab the characters from the store and make them available on props
const mapStateToProps = (store: IAppState) => {
  return {
    holes: store.holeState.holes,
  };
};

export default connect(mapStateToProps)(HoleList);
