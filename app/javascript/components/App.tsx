import * as React from "react";

import { BrowserRouter, Switch, Route } from "react-router-dom";

/* Make the store available to all container
components in the application without passing it explicitly */
import { Provider } from "react-redux";

// Import the store function and state
import configureStore, { IAppState } from "../store/Store";
import { getAllHoles } from "../actions/HoleActions";

import HoleListContainer from "../containers/HoleListContainer";

// Generate the store
const store = configureStore();
store.dispatch(getAllHoles());

class App extends React.Component {
  render() {
    return (
      <Provider store={store}>
        <BrowserRouter>
          <Switch>
            <Route exact path="/" render={() => "Home!"} />
            <Route path="/holes" render={() => <HoleListContainer />} />
          </Switch>
        </BrowserRouter>
      </Provider>
    );
  }
}

export default App;
