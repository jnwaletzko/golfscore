import * as React from "react";
import { connect } from "react-redux";

import { IAppState } from "../../store";

import { IHole } from "../../reducers/hole-reducer";
import HoleList from './hole-list';

// Create the containers interface
interface IProps {
  holes: IHole[];
}

class HoleListContainer extends React.Component<IProps> {
  render() {
    const { holes } = this.props;

    return (
      <HoleList holes={holes}></HoleList>
    );
  }
}

// Grab the characters from the store and make them available on props
const mapStateToProps = (store: IAppState) => {
  return {
    holes: store.holeState.holes
  };
};

export default connect(mapStateToProps)(HoleListContainer);
