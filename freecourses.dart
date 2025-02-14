import 'package:flutter/material.dart';

class FreeCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Free Courses"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CourseCard(course: courses[index]);
          },
        ),
      ),
    );
  }
}

class Course {
  final String title;
  final Color backgroundColor;
  Course({required this.title, required this.backgroundColor});
}

List<Course> courses = [
  Course(title: "Spoken English", backgroundColor: Colors.orange),
  Course(title: "English Writing", backgroundColor: Colors.green),
  Course(title: "Python for Beginners", backgroundColor: Colors.blue),
  Course(title: "Web Development", backgroundColor: Colors.purple),
];

class CourseCard extends StatelessWidget {
  final Course course;
  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Container(
        color: course.backgroundColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              course.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
