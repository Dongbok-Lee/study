import 'dart:math';
void right(table){
  int k = 1;
  for(int i = 3; i<=15; i+=4){
    for(int j = i; j>i-4; j--){
      if(table[j] == ' '){
        while(j-k<i-4){
          if(table[j-k] != ' '){
            table[j] = table[j-k];
            table[j-k] = ' ';
            k = 1;
            break;
          }
          k++;
        }
      }
    }
  } // 모든 요소 오른쪽으로 밀기
  for(int i = 3; i<=15; i+=4){
    for(int j = i; j>i-4; j--){
      if(table[j] != ' '){

      }
    }
  }

  table[Random().nextInt(16)] = '2';
}
