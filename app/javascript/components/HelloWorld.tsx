import * as React from "react"

export interface Props {
  greeting: string;
}

class HelloWorld extends React.Component<Props, object> {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

export default HelloWorld
