import 'package:dribble_design/utils/excercises.dart';
import 'package:flutter/material.dart';

import '../utils/emotion_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
         items: const [
           BottomNavigationBarItem(
               icon: Icon(Icons.home),
           label: ""),
           BottomNavigationBarItem(
               icon: Icon(Icons.message),
               label: ""),
           BottomNavigationBarItem(
               icon: Icon(Icons.person),
               label: ""),
         ],
      ),
      body:SafeArea(
        child: Column(
          children: [
            //greetings Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi, jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hey, There!!",
                            style: TextStyle(color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),),
                          SizedBox(height: 8,),
                          Text('2 jan, 2020',style: TextStyle(color: Colors.blue[200]),)
                        ],
                      ),
                      //Notification
                      Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Icon(Icons.notifications,color: Colors.white,))
                    ],
                  ),
                  const SizedBox(height: 20,),
                  //search bar
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search,
                          color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Search",style: TextStyle(
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                  const SizedBox(height:20),
                  //how do you feel?
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.more_horiz,
                          color: Colors.white,)
                      ]
                  ),
                  const SizedBox(height: 20,),
                  //4 Different faces
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😩",),
                          SizedBox(height: 8,),
                          Text("Bad",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      //fine
                      Column(
                        children: [
                          EmotionFace(emotionFace: "🙂‍",),
                          SizedBox(height: 8,),
                          Text("Fine",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😄",),
                          SizedBox(height: 8,),
                          Text("Well",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      //excellent
                      Column(
                        children: [
                          EmotionFace(emotionFace: "🥳",),
                          SizedBox(height: 8,),
                          Text("Excellent",style: TextStyle(color: Colors.white),),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                  color: Colors.grey[200],
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  //excercise  heading
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Excercises",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  //list view of excercises
                  SizedBox(height: 20,),
                  Expanded(
                    child: ListView(
                      children: const [
                        Excercises(icon: Icons.favorite,
                        name: "Speaking Skills",
                        numbers: "20 Excercises",
                        color: Colors.orange,),
                        Excercises(icon: Icons.person,
                          name: "Reading Skills",
                          numbers: "7 Excercises",
                        color: Colors.blue,),
                        Excercises(icon: Icons.star,
                          name: "Writing Skills",
                          numbers: "10 Excercises",
                        color: Colors.purpleAccent,),
                        Excercises(icon: Icons.verified,
                          name: "Verbal Skills",
                          numbers: "80 Excercises",
                          color: Colors.cyan,),

                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      )
    );
  }
}
