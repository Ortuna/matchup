/** @jsx React.DOM */

$(document).ready(function(){
  var target = "teacher-view";

  if($("#" + target).length == 0) return;

  var targetElement = document.getElementById(target);

  React.render(
    <Teacher/>,
    targetElement);
});

var Teacher = React.createClass({
  getInitialState: function() {
    return {};
  },
  getStudents: function() {
    var url = "http://localhost:3000/activities/350bb/source" ;
  }, 
  componentDidMount: function() {
    this.getStudents();
  },
  render: function() {
    return(
      <h1>Test</h1>
    );
  }
});
