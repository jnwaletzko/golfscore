import { ActionCreator, Dispatch } from "redux";
import { ThunkAction } from "redux-thunk";
import axios from 'axios';

import { IHole, IHoleState } from "../reducers/holeReducer";

export enum HoleActionTypes {
  GET_ALL = 'GET_ALL',
}

export interface IHoleGetAllAction {
  type: HoleActionTypes.GET_ALL;
  holes: IHole[]
}

/*
Combine the action types with a union (we assume there are more)
example: export type CharacterActions = IGetAllAction | IGetOneAction ...
*/
export type HoleActions = IHoleGetAllAction;

/* Get All Action
<Promise<Return Type>, State Interface, Type of Param, Type of Action> */
export const getAllHoles: ActionCreator<
  ThunkAction<Promise<any>, IHoleState, null, IHoleGetAllAction>
> = () => {
  return async (dispatch: Dispatch) => {
    try {
      const response = await axios.get('/v1/holes');
      dispatch({
        holes: response.data.holes,
        type: HoleActionTypes.GET_ALL,
      });
    } catch (err) {
      console.error(err);
    }
  };
};
