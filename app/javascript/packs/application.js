// Support component names relative to this directory:
var componentRequireContext = require.context("../react-app", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
