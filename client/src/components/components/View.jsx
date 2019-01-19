
import React from 'react';
import axios from 'axios';
import path from "path"
import App from "../App.jsx"
import styles from "../../../dist/styles.css"


class View extends React.Component {
  constructor(){
    super();

    this.state = {
        path: "https://s3-us-west-1.amazonaws.com/table-it/images/",
        current_photo: this.props ? this.props.photoID:null,
        close: false
    }
  }
componentWillMount() {
  this.setState({
    current_photo: this.props.photoID
  });
}

handleLeftClick(e) {
  e.preventDefault()
  if (this.state.current_photo === 0) {
    this.setState({current_photo: 19})
  } else{
    this.setState({current_photo: this.state.current_photo - 1})
  }
}


handleRightClick(e) {
  e.preventDefault()
  if (this.state.current_photo === 19) {
    this.setState({current_photo: 0})
  } else{
    this.setState({current_photo: this.state.current_photo + 1})}
}

  render() {
    return (
      <div> 
        <div className = {styles.view}>
        <div className = {styles.fullscreenimage}>
          <div className  = {styles.photogallery}>
          <button className={styles.escape}onClick={e => this.props.handleEscape(e)}><img src="https://s3-us-west-1.amazonaws.com/table-it/close_x.png"></img> </button>
          <button className={styles.chevronleft} onClick={e => this.handleLeftClick(e)}><img src="https://s3-us-west-1.amazonaws.com/table-it/left.png"></img> </button>
            <img className = {styles.imagestyle}src={path.join(this.state.path, `restID${this.props.restID}_photo${this.state.current_photo}.jpg`)} ></img> 
          <button className={styles.chevronright} onClick={e => this.handleRightClick(e)}><img src="https://s3-us-west-1.amazonaws.com/table-it/right.png"></img> </button>
          </div>
        </div>
      </div> 
        
        
    </div>

    )
  }
}

export default View;
