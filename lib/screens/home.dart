import 'package:courses_booking_app/components/course_card.dart';
import 'package:courses_booking_app/components/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Course Booking"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ListView.builder(
            itemBuilder: (_, index) => CourseCard(Course(
                id: 2,
                name: 'Course 2',
                description: 'Course 2 description',
                price: 100,
                duration: 8,
                instructor: "Adam Walter",
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlcp2zGlOLCns8DJ-toSBVHLCEb-0yWVPzbmgk12ljrASyLqEMCXGtPzTIlK0JLtE3erg&usqp=CAU')),
            itemCount: 12,
          ),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
