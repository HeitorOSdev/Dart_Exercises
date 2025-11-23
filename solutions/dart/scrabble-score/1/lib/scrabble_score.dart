  List<String> scoresOne = ['a','e','i','o','u','l','n','r','s','t'];
  List<String> scoresTwo = ['d','g'];
  List<String> scoresThree = ['b','c','m','p'];
  List<String> scoresFour = ['f','h','v','w','y'];
  List<String> scoresFive = ['k'];
  List<String> scoresEight = ['j','x'];
  List<String> scoresTen = ['q','z'];

int score(String word){
  String wordLowerCase = word.toLowerCase();
  List<String> letterList = wordLowerCase.split('');
  int totalScore = 0;

  print('wordLowerCase: ');
  print(wordLowerCase);
  print('letterList: ');
  print(letterList);

  if(letterList.isEmpty){
    return totalScore;
  }else{
    letterList.forEach((letter) {
      totalScore += myVerifyLetterScore(letter);
    });
    return totalScore;
  }
}

int myVerifyLetterScore(String letter){
  if(scoresOne.contains(letter)) return 1;
  if(scoresTwo.contains(letter)) return 2;
  if(scoresThree.contains(letter)) return 3;
  if(scoresFour.contains(letter)) return 4;
  if(scoresFive.contains(letter)) return 5;
  if(scoresEight.contains(letter)) return 8;
  if(scoresTen.contains(letter)) return 10;
  return 0;
}