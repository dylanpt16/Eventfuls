import React from 'react';

class SlideShow extends React.Component {
  constructor (props) {
    super(props);
  }

  componentDidMount(){
    this.run();
  }

  run() {
    $("#slideshow > div:gt(0)").hide();
    this.animation = setInterval(() => {
      $('#slideshow > div:first')
        .fadeOut(2000)
        .next()
        .fadeIn(1000)
        .end()
        .appendTo('#slideshow');
    }, 3500);
  }

  render(){
    return (
      <div id="slideshow">
        <h1 className="slideshow-logo">Eventfuls</h1>
        <div className="slide-border">
          <img
            className="slide-image"
            src="http://res.cloudinary.com/dylanpt16/image/upload/v1517665398/eventfuls/slide1.jpg"
          />
        </div>
        <div className="slide-border">
          <img
            className="slide-image"
            src="http://res.cloudinary.com/dylanpt16/image/upload/v1517665399/eventfuls/slide2.jpg"
          />
        </div>
        <div className="slide-border">
          <img
            className="slide-image"
            src="http://res.cloudinary.com/dylanpt16/image/upload/v1517666334/eventfuls/slide3.jpg"
          />
        </div>
        <div className="slide-border">
          <img
            className="slide-image"
            src="http://res.cloudinary.com/dylanpt16/image/upload/v1517666079/eventfuls/slide4.jpg"
          />
        </div>
      </div>
    );
  }
}

export default SlideShow;
