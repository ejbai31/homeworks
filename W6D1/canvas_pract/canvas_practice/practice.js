document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('myCanvas');
  canvas.width = 500;
  canvas.height = 500;

  const ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect = (0,0,500,500);
  ctx.beginPath();
  ctx.arc(75, 75, 50, 0, 2 * Math.PI);
});
