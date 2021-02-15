
function move1(t){
  var Bar =document.querySelector("#u-Bar");
  var List = document.querySelector('.menu-list'+t);
  for(i=1; i<6; i++){
    document.querySelector('.menu-list'+i).style.color='#b5b5b5';
    List.onmouseover = function(){
      List.style.color='#979797';
    List.onmouseout =function(){
        List.style.color='#b5b5b5';
      }
    }
  }
  switch (t){
    case(1):
    Bar.style.transform='translate(435px,0px)';
    List.style.color='#D94F5C';
    break;
    case(2):
    Bar.style.transform='translate(522px,0px)';
    List.style.color='#D94F5C';
    break;
    case(3):
    Bar.style.transform='translate(622px,0px)';
    List.style.color='#D94F5C';
    break;
    case(4):
    Bar.style.transform='translate(720px,0px)';
    List.style.color='#D94F5C';
    break;
    case(5):
    Bar.style.transform='translate(815px,0px)';
    List.style.color='#D94F5C';

  }
    Bar.style.display='block';
}
