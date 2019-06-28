import * as React from "react";

import { BrowserRouter, Switch, Route } from 'react-router-dom'

/* Make the store available to all container
components in the application without passing it explicitly */
import { Provider } from 'react-redux';

// Import the store function and state
import configureStore, { IAppState } from '../store/Store';
import { getAllHoles } from '../actions/HoleActions';

import HelloWorld from './HelloWorld'
import Game from "./Game";

// Generate the store
const store = configureStore();
store.dispatch(getAllHoles());

class App extends React.Component {
  render () {
    return (
      <Provider store={store}>
        <BrowserRouter>
          <Switch>
            <Route exact path="/" render={() => ("Home!")} />
            <Route path="/hello" render={() => <HelloWorld greeting="Friend"/>} />
            <Route path="/game" render={() => <Game/>} />
          </Switch>
        </BrowserRouter>
      </Provider>
    );
  }
}

export default App
