import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [SideBar(), Notes()],
      ),
    );
  }

  Widget SideBar() {
    return Container(
      constraints: BoxConstraints(maxWidth: 200),
      decoration: BoxDecoration(
        color: Color.fromRGBO(210, 210, 200, .2), // 251, 251, 250,
        border: Border.all(
          color: Color.fromRGBO(210, 210, 210, .5),
        ),
      ),
      child: Column(
        children: [Page("Pg1"), Page("Pg2"), Page("Pg3")],
      ),
    );
  }

  Widget Page(String name) {
    return Container(
      constraints: BoxConstraints(minWidth: 200),
      padding: EdgeInsets.all(8),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black54,
        ),
        child: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        onPressed: () => (print("Pressed ${name}")),
      ),
    );
  }

  Widget Notes() {
    return Container();
  }
}
