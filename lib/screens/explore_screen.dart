import 'package:flutter/material.dart';
import 'package:tinder_clone_app/styles/app_styles.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Scaffold(
        appBar: AppStyles.appBar,
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/cover1.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Explore more",
              style: AppStyles.subHeadingStyle
                  .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 8), // Add some spacing between images
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/cover2.jpg"),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/cover3.jpg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 8), // Add some spacing between images
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/cover4.jpg"),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/cover5.jpg"),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
