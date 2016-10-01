var ReactDOM = require('react-dom');
var React = require('react');
var App = require('./components/App');

document.addEventListener('DOMContentLoaded', function(){
  ReactDOM.render(<Emojipicker/>, document.getElementById('app'));
});
