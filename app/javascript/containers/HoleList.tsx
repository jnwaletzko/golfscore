import * as React from 'react';
import { connect } from 'react-redux';

import { IAppState } from '../store/Store';

import { IHole } from '../reducers/holeReducer';

// Create the containers interface
interface IProps {
  holes: IHole[];
}

class HoleList extends React.Component<IProps> {
  public render() {
    const { holes } = this.props;
    return (
      <div className="name-container">
        {holes &&
          holes.map(hole => {
            return (
              <span key={hole.number} className="name">
                {hole.number}
              </span>
            );
          })}
      </div>
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
