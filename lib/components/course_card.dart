import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Course _course;

  CourseCard(this._course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(this._course.name),
        leading: Image(
          image: NetworkImage(_course.imageUrl),
        ),
        trailing: Text(this._course.price.toString() + ' AED'),
        subtitle: Text(this._course.instructor),
      ),
    );
  }
}

class Course {
  String name;
  int id;
  int price;
  int duration;
  String description;
  String imageUrl;
  String instructor;

  Course(
      {required this.name,
      required this.id,
      required this.price,
      required this.duration,
      required this.description,
      required this.imageUrl,
      required this.instructor});
}
