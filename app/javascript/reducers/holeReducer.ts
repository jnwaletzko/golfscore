import { Reducer } from "redux";
import {
  HoleActions,
  HoleActionTypes,
} from '../actions/HoleActions';

export interface IHole {
  number: number;
  score: number;
  putts: number;
  notes: string;
}

export interface IHoleState {
  readonly holes: IHole[];
}

const initialHoleState: IHoleState = {
  holes: [],
}

export const holeReducer: Reducer<IHoleState, HoleActions> = (
  state = initialHoleState,
  action
) => {
  switch (action.type) {
    case HoleActionTypes.GET_ALL: {
      return {
        ...state,
        holes: action.holes,
      };
    }
    default:
      return state;
  }
};
