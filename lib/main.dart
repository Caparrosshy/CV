import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'skills.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 5, 5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 2, 110, 47),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/shy.jpg',
                ),
                radius: 60.0,
              ),
            ),
            Divider(height: 90, color: Color.fromARGB(255, 3, 110, 52)),
            Text(
              "Name:",
              style: TextStyle(
                color: Color.fromARGB(255, 1, 97, 41),
              ),
            ),
            Text(
              "Shyla Jhane A. Caparros",
              style: TextStyle(
                  color: Color.fromARGB(255, 4, 124, 54),
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text(
              "Position:",
              style: TextStyle(
                color: Color.fromRGBO(1, 129, 55, 1),
              ),
            ),
            Text(
              "Computer Technician",
              style: TextStyle(
                  color: Color.fromRGBO(1, 129, 55, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.mail, color: Color.fromARGB(255, 174, 253, 207)),
                SizedBox(width: 8.0),
                Text(
                  "shycaprrs@gmail.com",
                  style: TextStyle(color: Color.fromARGB(255, 2, 107, 49)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.call, color: Color.fromARGB(255, 176, 250, 188)),
                SizedBox(width: 8.0),
                Text(
                  "09918085644",
                  style: TextStyle(color: Color.fromARGB(255, 2, 92, 47)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.info, color: Color.fromARGB(255, 186, 250, 186)),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EducationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.school, color: Color.fromARGB(255, 151, 245, 190)),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SkillsScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.settings, color: Color.fromARGB(255, 153, 243, 176)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
