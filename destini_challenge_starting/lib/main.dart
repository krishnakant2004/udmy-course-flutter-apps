import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'story_brain.dart';
//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(Destini());

class Destini extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  bool checkvisible(){
    int num=stbrain.snum();
    if(num==3 ||num==4 ||num==5){
      return false;
    }else{
      return true;
    }
  }
  Story_Brain stbrain=Story_Brain();
  void press(int n){
    int num_val=stbrain.snum();
    if(num_val==5 ||num_val==4||num_val==3){
      stbrain.nextStory(0);
      setState(() {

      });
    }
    if(n==1){
      if(num_val==0){
        stbrain.nextStory(2);
      }else if(num_val==2){
        stbrain.nextStory(5);
      }else if(num_val==1){
        stbrain.nextStory(2);
      }
    }
    else if(n==2){
        if(num_val==0){
          stbrain.nextStory(1);
        }else if(num_val==1){
          stbrain.nextStory(3);
        }else if(num_val==2){
          stbrain.nextStory(4);
        }
    }
    if(num_val==5 ||num_val==4||num_val==3){
      stbrain.nextStory(0);
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    stbrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: MaterialButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                 press(1);
                  },
                  color: Colors.red,
                  child: Text(
                    stbrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Visibility(
                visible: checkvisible(),
                child: Expanded(
                  flex: 2,
                  //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                  //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                  child: MaterialButton(
                    onPressed: () {
                      press(2);
                      //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                    },
                    color: Colors.blue,
                    child: Text(
                      stbrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
