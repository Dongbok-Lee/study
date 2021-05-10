import 'dart:math';
void right(table, recursion(table)){
  List tmp = List.from(table);
  for(int i = 3; i<=15; i+=4){
    for(int j = i; j>i-4; j--){
      if(table[j] == ' '){
        int k = 1;
        while(j-k >= i-4){
          if(table[j-k] != ' '){
            table[j] = table[j-k];
            table[j-k] = ' ';
          }
          k++;
        }
      }
      if(table[j] != ' '){
      int k = 1;
        while(j-k > i-4){
            if(table[j-k] == table[j]){
              table[j-k] = ' ';
              table[j] = (int.parse(table[j])*2).toString;
            }
            else if(table[j-k] != ' '){
              table[j-1] = table[j-k];
            }
          k++;
        }
      }
    }
  }
  if(tmp != table){
    recursion(table);
  }// ' '가 아닐때 배열 내 동일 값 찾아서 더함
  }


void recursion(table) {
  int t = Random().nextInt(16);
  if (table[t] != ' ')
    return recursion(table);
  else
    table[t] = '2'; //빈 테이블 값중에 랜덤으로 '2' 입력
}

void gameOver(table,recursion(table)) {
    List tmp = List.from(table);
    right(tmp,recursion(tmp));
    if(tmp == table){
      return print('Game Over');
    }
}
