var randomArr = [];
var count = [];
var strikeCount = 0;
var ballCount = 0;
  var i;
  for(i=0; i<3; i++){
    randomArr.push(Math.floor(Math.random()*10));
  }
function noZero(){
  if(randomArr[0] === 0){
    randomArr[0] = Math.floor(Math.random()*10);
    noZero();
  }
}
function noOverLap(){
  if(randomArr[0] === randomArr[1]){
    randomArr[1] = Math.floor(Math.random()*10);
    noOverLap();
  }
  if(randomArr[1] === randomArr[2]){
    randomArr[1] = Math.floor(Math.random()*10);
    noOverLap();
  }
  if(randomArr[0] === randomArr[2]){
    randomArr[2] = Math.floor(Math.random()*10);
    noOverLap();
  }
}
function inputNoOverLap(){
  if(count[0] === count[1])
    alert("숫자 중복입력 금지");
  if(count[1] === count[2])
    alert("숫자 중복입력 금지");
  if(count[0] === count[2])
    alert("숫자 중복입력 금지");
}
function baseballCount(){
  strikeCount = 0;
  ballCount = 0;
  count = [];
let num = document.getElementById('num');
  for(i=0; i<num.length; i++){
  count+=(num.elements[i].value * 1);
}

  var j;
  for(i=0; i<3; i++){
    if(randomArr[ i ] === count[ i ]*1 )
      strikeCount++;
    for(j=0; j<3; j++){
      if(randomArr[ i ] === count[ j ]*1)
        ballCount++;
    }
    }
      ballCount-=strikeCount;
      document.getElementById("strike").innerHTML = strikeCount;
      document.getElementById("ball").innerHTML = ballCount;
      if(strikeCount === 3){
      alert("축하합니다~");
      }
      inputNoOverLap();
      return false;
}
noOverLap();
noZero();
