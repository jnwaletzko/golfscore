import * as React from "react"
import Button from "@material-ui/core/Button";
import HoleList from "../containers/HoleList";
export interface Props {
  greeting: string;
}

class HelloWorld extends React.Component<Props, object> {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
        {/* <Button>
          Hey Dudes
        </Button> */}
        <HoleList />
      </React.Fragment>
    );
  }
}

export default HelloWorld
