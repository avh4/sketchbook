function resizeFrame() {
  var pjs = Processing.getInstanceById('canvas');
  if (pjs) {
    pjs.resizeSketch(document.getElementById('div_p5canvas').offsetWidth,    document.getElementById('div_p5canvas').offsetHeight);    
  } else {
    setTimeout(resizeFrame, 10);
  }
};

$(window).resize(resizeFrame);
resizeFrame();
