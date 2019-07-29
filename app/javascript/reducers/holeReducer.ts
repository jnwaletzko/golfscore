import { Reducer } from "redux";
import {
  HoleActions,
  HoleActionTypes,
} from '../actions/HoleActions';

export interface IHole {
  id: number;
  number: number;
  par: number;
  yardage: number;
  strokes: number;
  number_of_putts: number;
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
