
function move1(t){
  var Bar =document.querySelector("#u-Bar");
  switch (t){
    case(1):
    Bar.style.transform='translate(435px,0px)';
    fontcolor(1);
    break;
    case(2):
    Bar.style.transform='translate(522px,0px)';
    fontcolor(2);
    break;
    case(3):
    Bar.style.transform='translate(622px,0px)';
    fontcolor(3);
    break;
    case(4):
    Bar.style.transform='translate(720px,0px)';
    fontcolor(4);
    break;
    case(5):
    Bar.style.transform='translate(815px,0px)';
    fontcolor(5);
  }
    Bar.style.display='block';
}
function fontcolor(s){
    var List = document.querySelector('#menu-list'+s);
    for(var i=1; i<11; i++){
      document.querySelector('#menu-list'+i).classList.replace('active1','hover');
    }
    List.classList.replace('hover','active1');
    if(s>5&&s<11){
      List.classList.add('active2')
    }
}
function aniList(t){
  var btn = document.querySelector('.ani_'+t);
  for(var i = 1; i<7; i++){
    document.querySelector('.ani_'+i).style.display='none';
  }
  btn.style.display='block';
}
function move2(t){
  switch (t){
    case(6):
    fontcolor(6);
    break;
    case(7):
    fontcolor(7);
    break;
    case(8):
    fontcolor(8);
    break;
    case(9):
    fontcolor(9);
    break;
    case(10):
    fontcolor(10);
  }

}
