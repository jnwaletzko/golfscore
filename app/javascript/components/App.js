import React from "react"
import PropTypes from "prop-types"

import { BrowserRouter, Switch, Route } from 'react-router-dom'

import HelloWorld from './HelloWorld'
import Game from "./Game";

class App extends React.Component {
  render () {
    return (
      <BrowserRouter>
        <Switch>
          <Route exact path="/" render={() => ("Home!")} />
          <Route path="/hello" render={() => <HelloWorld greeting="Friend"/>} />
          <Route path="/game" render={() => <Game/>} />
        </Switch>
      </BrowserRouter>
    );
  }
}

export default App
