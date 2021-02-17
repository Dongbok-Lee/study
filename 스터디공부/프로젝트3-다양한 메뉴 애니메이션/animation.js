
function move1(t){
  var Bar =document.querySelector("#u-Bar");
  switch (t){
    case(1):
    Bar.style.transform='translate(435px,0px)';
    break;
    case(2):
    Bar.style.transform='translate(522px,0px)';
    break;
    case(3):
    Bar.style.transform='translate(622px,0px)';
    break;
    case(4):
    Bar.style.transform='translate(720px,0px)';
    break;
    case(5):
    Bar.style.transform='translate(815px,0px)';
  }
    Bar.style.display='block';
}
function aniList(t){
  var btn = document.querySelector('.ani_'+t);
  for(var i = 1; i<7; i++){
    document.querySelector('.ani_'+i).style.display='none';
  }
  btn.style.display='block';
}
