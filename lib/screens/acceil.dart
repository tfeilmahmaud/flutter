// import 'package:flutter/material.dart';
// import 'package:projetflutter/login.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: LoginScreen(), // Use your LoginScreen widget as the home
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_formatiom/screens/appdata.dart';
import 'package:flutter_application_formatiom/screens/catagoryitem.dart';
import 'package:flutter_application_formatiom/screens/catagorylist.dart';
import 'package:flutter_application_formatiom/screens/login_screen.dart';
import 'package:flutter_application_formatiom/screens/loginens.dart';
//import 'package:projetflutter/login.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Tout apprendre Apprenez avec plaisir avec nous, là où vous êtes !"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: typeUser
            .map(
              (CategoryData) => CategoryItem(
                  CategoryData.id, CategoryData.title, CategoryData.imageUrl,
                  () {
                if (CategoryData.id == "C1") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                } else if (CategoryData.id == "C2") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen1()),
                  );
                }
              }),
            )
            .toList(),
      ),
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: Scaffold(
    //     body: Container(
    //       color: Color.fromARGB(255, 2, 38, 78), // Blue Marine color
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           // Column 1
    //           Expanded(
    //             flex: 2,
    //             child: Column(
    //               children: [
    //                 // Row with two items
    //                 Center(
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       Image.asset(
    //                         'lib/images/pp.jpg',
    //                         width: 100,
    //                         height: 100,
    //                       ),
    //                       SizedBox(height: 50),
    //                       Text(
    //                         'Des Salles de Classes plus gaies',
    //                         style: TextStyle(color: Colors.white, fontSize: 25),
    //                       ),
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           // Column 2
    //           Expanded(
    //             child: Container(
    //               color: Color.fromARGB(
    //                   255, 2, 38, 78), // Same as main container color
    //               child: GestureDetector(
    //                 onTap: () {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(builder: (context) => HomScreen()),
    //                   );
    //                 },
    //                 child: Container(
    //                   margin: EdgeInsets.all(8), // Add margin for spacing
    //                   decoration: BoxDecoration(
    //                     color: Color.fromARGB(
    //                         255, 2, 38, 78), // Same as container color
    //                     borderRadius:
    //                         BorderRadius.circular(8), // Rounded corners
    //                     border:
    //                         Border.all(color: Colors.white, width: 1), // Border
    //                   ),
    //                   child: Card(
    //                     color: Color.fromARGB(255, 2, 38, 78),
    //                     child: ListTile(
    //                       title: Text(
    //                         'je suis un parant',
    //                         style: TextStyle(
    //                             color: Colors.white // Rouge (255, 0, 0)
    //                             ),
    //                       ),
    //                       trailing: Image.asset('lib/images/parent.jpg'),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           // Column 3
    //           Expanded(
    //             child: Container(
    //               color: Color.fromARGB(
    //                   255, 2, 38, 78), // Same as main container color
    //               child: GestureDetector(
    //                 onTap: () {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(builder: (context) => LoginScreen()),
    //                   );
    //                   // Action when button 2 is tapped
    //                 },
    //                 child: Container(
    //                   margin: EdgeInsets.all(8), // Add margin for spacing
    //                   decoration: BoxDecoration(
    //                     color: Color.fromARGB(
    //                         255, 2, 38, 78), // Same as container color
    //                     borderRadius:
    //                         BorderRadius.circular(8), // Rounded corners
    //                     border:
    //                         Border.all(color: Colors.white, width: 1), // Border
    //                   ),
    //                   child: Card(
    //                     color: Color.fromARGB(255, 2, 38, 78),
    //                     child: ListTile(
    //                       title: Text(
    //                         'je suis un enseignant',
    //                         style: TextStyle(color: Colors.white),
    //                       ),
    //                       trailing: Image.asset('lib/images/jj.jpg'),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           // Column 4
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
