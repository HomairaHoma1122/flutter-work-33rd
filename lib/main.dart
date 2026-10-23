import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoursePage(),
    );
  }
}

class CoursePage extends StatelessWidget{
  CoursePage({super.key});

  final List<Map<String, dynamic>> courses = const [
    {
      'title': 'Flutter Development',
      'time': '1:40 PM & 2:30 PM',
      'image': 'data:image/jpeg;base64,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',
      'description': 'Learn Flutter to build beautiful mobile applications for Android, IOS, web and desktop using a single codebase.',
      'color': '0xFF6750A4',
    },
     {
      'title': 'Next JS',
      'time': '1:00 PM & 1:40 PM',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh-DuvozoIfvHQQcOLSezG30jsfMguSyuBltLQdYFq7w&s=10',
     'description': 'Next.js is an open-source full-stack web development framework created by the private company.',
  
    },
     {
      'title': 'Flutter Development',
      'time': '1:40 PM & 2:30 PM',
      'image': 'data:image/jpeg;base64,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',
      'description': 'Learn Flutter to build beautiful mobile applications for Android, IOS, web and desktop using a single codebase.',
      
    },
     {
      'title': 'Flutter Development',
      'time': '1:40 PM & 2:30 PM',
      'image': 'data:image/jpeg;base64,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',
      'description': 'Learn Flutter to build beautiful mobile applications for Android, IOS, web and desktop using a single codebase.',
      
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Programming Courses'),),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: courses.length,
        itemBuilder: (context, index){
          final course = courses[index];
          return CourseCard(
            title: course['title'],
            time: course['time'],
            image: course['image'],
            description: course['description'],
            
          );
        },
        ),
    
    );
  }
}

class CourseCard extends StatelessWidget{
  final String title;
  final String time;
  final String image;
  final String description;
  
  const CourseCard({
    required this.title,
    required this.time,
    required this.image,
    required this.description,
  
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 220,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace){
                    return Container(
                      
                      child: Icon(Icons.image_not_supported,
                      color: Colors.white,
                      size: 60,
                      ),
                    );
                  },
                  ),
                  
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue,
                        Colors.purple
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    right: 20,
                    child: Text(title, style:  TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, shadows: [
                      Shadow(color: Colors.black54, blurRadius: 8),
                    ],),),),
                ],
              ),
            ),
            Container(
              height: 8,
              decoration: BoxDecoration(
              color:  Colors.black
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
             children: [
              Text(title, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(0xFF283654)),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time, ),
                  SizedBox(width: 8,),
                  Flexible(child: Text(time, style: TextStyle(fontSize: 15),),),
                ],
              ),
              SizedBox(height: 18,),
              Text(description, textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, height: 1.7, color: Colors.blue,),),
              SizedBox(height: 18,),
              Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context). showSnackBar(
              SnackBar(content: Text('$title selected'),
              ),
              );
              
              }, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, foregroundColor: Colors.white, ),
              child: Text('View Course')),
              ),
             ],
            ),
            )
          ],
        ),
      );
    
  }
}