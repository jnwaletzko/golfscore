import * as React from 'react';
import { connect } from 'react-redux';

import { IAppState } from '../../store';

import { IHole } from '../../reducers/hole-reducer';
import { Container } from '@material-ui/core';
import HoleList from './hole-list';

// Create the containers interface
interface IProps {
  holes: IHole[];
}

class HoleListContainer extends React.Component<IProps> {
  render() {
    const { holes } = this.props;
    const frontNine = holes.splice(0, 9);
    const backNine = holes.splice(0, 9);

    return (
      <Container fixed>
        Them holes
        <HoleList holes={frontNine} />
        <HoleList holes={backNine} />
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

export default connect(mapStateToProps)(HoleListContainer);
