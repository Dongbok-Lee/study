for (var i = 1; i < 7; i++) {
  document.querySelector(".use" + i).style.display = "none";
}

function mOver(i) {
  var t = document.querySelector(".use" + i);
  for (var j = 1; j < 7; j++) {
    if (i == j) {
      j++;
      if(j==7){
        break;
      }
    }
    if (document.querySelector(".use" + j).style.display == 'block') {
      document.querySelector(".use" + j).style.display = 'none';
    }
  }

  if (t.style.display == 'none') {
    t.style.display = 'block';
  }else{
    t.style.display = 'none';
  }
}
