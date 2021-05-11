import 'dart:math';

dynamic right(table) {
  int score = 0;
  dynamic recursion(table) {
    int t = Random().nextInt(16);
    if (table[t] != ' ')
      return recursion(table);
    else
      table[t] = '2'; //빈 테이블 값중에 랜덤으로 '2' 입력
  }
  List tmp = List.from(table);
  for (int i = 3; i <= 15; i += 4) {
    for (int j = i; j > i - 4; j--) {
      if (table[j] == ' ') {
        int k = 1;
        while (j - k >= i - 3) {
          if (table[j - k] != ' ') {
            table[j] = table[j - k];
            table[j - k] = ' ';
            break;
          }
          k++;
        }
      }
      if (table[j] != ' ') {
        int k = 1;
        while (j - k > i - 4) {
          if (table[j - k] == table[j]) {
            table[j - k] = ' ';
            String t = (int.parse(table[j]) * 2).toString();
            score += int.parse(table[j]) * 2;
            table[j] = t;
            break;
          }
          else if (table[j - k] != ' ') {
            if(table[j - 1] != table[j - k]){
              table[j - 1] = table[j - k];
              table[j - k] = ' ';
            }
            break;
          }
          k++;
        }
      }
    }
  }

  for (int i = 0; i < 16; i++) {
    if (tmp[i] != table[i]) {
      recursion(table);
      break;
    }
    if(i == 15){
      score -= 2;
    }// ' '가 아닐때 배열 내 동일 값 찾아서 더함
  }
  return score+2;
}
dynamic left(table) {
  int score = 0;
  dynamic recursion(table) {
    int t = Random().nextInt(16);
    if (table[t] != ' ')
      return recursion(table);
    else
      table[t] = '2'; //빈 테이블 값중에 랜덤으로 '2' 입력
  }
  List tmp = List.from(table);
  for (int i = 0; i <= 12; i += 4) {
    for (int j = i; j < i + 4; j++) {
      if (table[j] == ' ') {
        int k = 1;
        while (j + k <= i + 3) {
          if (table[j + k] != ' ') {
            table[j] = table[j + k];
            table[j + k] = ' ';
            break;
          }
          k++;
        }
      }
      if (table[j] != ' ') {
        int k = 1;
        while (j + k < i + 4) {
          if (table[j + k] == table[j]) {
            table[j + k] = ' ';
            String t = (int.parse(table[j]) * 2).toString();
            score += int.parse(table[j]) * 2;
            table[j] = t;
            break;
          }
          else if (table[j + k] != ' ') {
            if(table[j + 1] != table[j + k]){
              table[j + 1] = table[j + k];
              table[j+k] = ' ';
            }
            break;
          }
          k++;
        }
      }
    }
  }
  for (int i = 0; i < 16; i++) {
    if (tmp[i] != table[i]) {
      recursion(table);
      break;
    } // ' '가 아닐때 배열 내 동일 값 찾아서 더함
    if(i == 15){
      score -= 2;
    }
  }
  return score+2;
}
dynamic up(table) {
  int score = 0;
  dynamic recursion(table) {
    int t = Random().nextInt(16);
    if (table[t] != ' ')
      return recursion(table);
    else
      table[t] = '2'; //빈 테이블 값중에 랜덤으로 '2' 입력
  }
  List tmp = List.from(table);
  for (int i = 0; i <= 3; i ++) {
    for (int j = i; j < i + 13; j+=4) {
      if (table[j] == ' ') {
        int k = 4;
        while (j + k <= i + 13) {
          if (table[j + k] != ' ') {
            table[j] = table[j + k];
            table[j + k] = ' ';
            break;
          }
          k+=4;
        }
      }
      if (table[j] != ' ') {
        int k = 4;
        while (j + k <= i + 13) {
          if (table[j + k] == table[j]) {
            table[j + k] = ' ';
            String t = (int.parse(table[j]) * 2).toString();
            score += int.parse(table[j]) * 2;
            table[j] = t;
            break;
          }
          else if (table[j + k] != ' ') {
            if(table[j + 4] != table[j + k]){
              table[j + 4] = table[j + k];
              table[j+k] = ' ';
            }
            break;
          }
          k+=4;
        }
      }
    }
  }
  for (int i = 0; i < 16; i++) {
    if (tmp[i] != table[i]) {
      recursion(table);
      break;
    } // ' '가 아닐때 배열 내 동일 값 찾아서 더함
    if(i == 15){
      score -= 2;
    }
  }
  return score + 2;
}
dynamic down(table) {
  int score = 0;
  dynamic recursion(table) {
    int t = Random().nextInt(16);
    if (table[t] != ' ')
      return recursion(table);
    else
      table[t] = '2'; //빈 테이블 값중에 랜덤으로 '2' 입력
  }
  List tmp = List.from(table);
  for (int i = 12; i <= 15; i ++) {
    for (int j = i; j > i - 13; j -= 4) {
      if (table[j] == ' ') {
        int k = 4;
        while (j - k >= i - 13) {
          if (table[j - k] != ' ') {
            table[j] = table[j - k];
            table[j - k] = ' ';
            break;
          }
          k+=4;
        }
      }
      if (table[j] != ' ') {
        int k = 4;
        while (j - k >= i - 13) {
          if (table[j - k] == table[j]) {
            table[j - k] = ' ';
            String t = (int.parse(table[j]) * 2).toString();
            score += int.parse(table[j]) * 2;
            table[j] = t;
            break;
          }
          else if (table[j - k] != ' ') {
            if(table[j - 4] != table[j - k]){
              table[j - 4] = table[j - k];
              table[j - k] = ' ';
            }
            break;
          }
          k+=4;
        }
      }
    }
  }

  for (int i = 0; i < 16; i++) {
    if (tmp[i] != table[i]) {
      recursion(table);
      break;
    } // ' '가 아닐때 배열 내 동일 값 찾아서 더함
    if(i == 15){
      score -= 2;
    }
  }
  return score + 2;
}


void gameOver(table,recursion(table)) {
    List tmp = List.from(table);
    right(tmp);
    left(tmp);
    up(tmp);
    down(tmp);
    if(tmp == table){
      return print('Game Over');
    }
}//right left up down시 움직이지 않을 때, 게임오버

int score(table){
  int t_score = 0;
  for (int i = 0; i <= 15; i++){
    if(table[i] != ' '){
    t_score += int.parse(table[i]);
    }
  }
  return t_score;
}

