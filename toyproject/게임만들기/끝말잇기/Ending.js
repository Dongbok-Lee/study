var     pWord ="교과서"
function Ending(){
  let word = document.getElementById("word");
  let save = "";
  let i;
  for(i=0; i<word.length; i++){
    save+=word.elements[i].value;
  }
  if(save[0] === pWord[pWord.length - 1]) {
    for(i=0; i<word.length; i++){
    pWord+=word.elements[i].value;
    }
    document.getElementById("record").innerHTML = save;
  }
}
