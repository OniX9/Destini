import 'story.dart';

class StoryBrain {
  int _storyNum = 0 ;
  List<Story> _storyData = [
    Story(
     storyTitle:
     'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
     choice1: 'I\'ll hop in. Thanks for the help!',
     choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
     storyTitle: 'He nods slowly, unphased by the question.',
     choice1: 'At least he\'s honest. I\'ll climb in.',
     choice2: 'Wait, I know how to change a tire.'),
    Story(
     storyTitle:
     'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
     choice1: 'I love Elton John! Hand him the cassette tape.',
     choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
     storyTitle:
     'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
     choice1: 'Restart',
     choice2: ''),
    Story(
     storyTitle:
     'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
     choice1: 'Restart',
     choice2: ''),
    Story(
     storyTitle:
     'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
     choice1: 'Restart',
     choice2: '')
    ];

  void nextStory(int choiceNum) {
    // St0ry 0
    if      (_storyNum == 0 && choiceNum == 1 ) _storyNum = 2 ;
    else if (_storyNum == 0 && choiceNum == 2 ) _storyNum = 1 ;
    // Story 1
    else if (_storyNum == 1 && choiceNum == 1 ) _storyNum = 2 ;
    else if (_storyNum == 1 && choiceNum == 2 ) _storyNum = 3 ;
    // Story 2
    else if (_storyNum == 2 && choiceNum == 1 ) _storyNum = 5 ;
    else if (_storyNum == 2 && choiceNum == 2 ) _storyNum = 4 ;
    // Story Restart
    else {
      choiceNum == 1 ? restart() : 'Does Nothing'; // restarts Story at Q3, Q4, & Q5.
    }
  }

  bool buttonShouldBeVisible(){
    // Turns off visiblitiy of Choice 2 button, once Quiz is over.
    if (_storyNum==3 || _storyNum==4 || _storyNum==5 ) return false;
    else return true;
  }

  void restart() {
    // if (choiceNum== 1 && (_storyNum==3 || _storyNum==4 || _storyNum==5 ))
    _storyNum = 0;
  }

  String getStory() {
    return _storyData[_storyNum].storyTitle ;
  }

  String getChoice1() {
    return _storyData[_storyNum].choice1 ;
  }

  String getChoice2() {
    return _storyData[_storyNum].choice2 ;
  }
}