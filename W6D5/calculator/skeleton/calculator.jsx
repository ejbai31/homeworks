import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = { first: "", second: "", result: 0};
    this.first = this.first.bind(this);
    this.second = this.second.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.substract.bind(this);
  }

  //your code here

  render(){
    return (
      <div>
        <h1>Hello World</h1>
        //your code will replace this
      </div>
    );
  }
}

export default Calculator;
