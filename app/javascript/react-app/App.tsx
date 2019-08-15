import * as React from "react";

import { BrowserRouter, Switch, Route } from "react-router-dom";
import { Container, CssBaseline } from '@material-ui/core';
import { createMuiTheme, MuiThemeProvider } from '@material-ui/core/styles';
import blue from '@material-ui/core/colors/blue';
import green from '@material-ui/core/colors/green';

/* Make the store available to all container
components in the application without passing it explicitly */
import { Provider } from "react-redux";

// Import the store function and state
import configureStore, { IAppState } from "./store";
import { getAllHoles } from "./actions/hole-actions";

import HoleListContainer from "./components/hole-list/hole-list-container";
import { grey, blueGrey } from '@material-ui/core/colors';

// Generate the store
const store = configureStore();
store.dispatch(getAllHoles());


const theme = createMuiTheme({
  palette: {
    primary: {
      main: green[800],
    },
    secondary: blue,
    background: {
      paper: grey[200]
    }
  },
});

class App extends React.Component {
  render() {
    return (
      <Provider store={store}>
        <MuiThemeProvider theme={theme}>
          <CssBaseline />
          <Container fixed>
            <BrowserRouter>
              <Switch>
                <Route exact path="/" render={() => "Home!"} />
                <Route path="/holes" render={() => <HoleListContainer />} />
              </Switch>
            </BrowserRouter>
          </Container>
        </MuiThemeProvider>
      </Provider>
    );
  }
}

export default App;
