import 'package:flutter/material.dart';
import 'package:metrorun/screens/booking/booking.dart';

class PurpleTo extends StatefulWidget {

  String from;
  int frm;
  PurpleTo({this.from, this.frm});
  _PurpleToState createState() => _PurpleToState(from: from, frm: frm);
}

class _PurpleToState extends State<PurpleTo> {

  String from;
  int frm;
  _PurpleToState({this.from, this.frm});

  @override
  Widget build(BuildContext context) {

    final purpleLine = [
      'Baiyyappanahalli',
      'Swami Vivekananda Road',
      'Indiranagar',
      'Halasuru',
      'Trinity',
      'Mahatma Gandhi Road',
      'Cubbon Park',
      'Vidhana Soudha',
      'Sir M Vishweshwarayya Central College',
      'Nadaprabhu Kempegowda Majestic',
      'KSR City Railway Station',
      'Magadi Road',
      'Hosahalli',
      'Vijayanagar',
      'Attiguppe',
      'Deepanjali Nagar',
      'Mysuru Road'
    ];

    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          title: Text('Select station',
              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.w500,
              )),
        ),
        body: ListView.separated(
            itemCount: purpleLine.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(
                    purpleLine[index],
                    style: TextStyle(
                      fontSize: 23.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Booking(from_station: from, to_station: purpleLine[index], from_index: frm, to_index: index)));
                    print(purpleLine[index]);
                    print(index);
                  });
            },
            separatorBuilder: (context, index) {
              return Divider();
            }));

  }

//  @override
//  void onBackPressed() {
//    Navigator.push(
//        context,
//        MaterialPageRoute(
//            builder: (context) =>
//                Booking()
//        )
//    );
//  }

}