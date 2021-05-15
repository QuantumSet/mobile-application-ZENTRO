import 'package:flutter/material.dart';

Container UIFButton (double minWidth, String text, double fontSize, Widget destination, context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      minWidth: minWidth,
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.deepPurpleAccent, width: 3.0),
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: fontSize)),
      splashColor: Colors.deepPurpleAccent,
      color: Colors.black,
    ),
  );


}

Container UIFTextField (String hintText, double horizontalWidth) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.symmetric(horizontal: horizontalWidth),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 3.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.white, width: 3.0),
        ),
      ),
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),

    ),
  );

}

Container UIBackButton (context) {
  return Container(
    alignment: AlignmentDirectional.topStart,
    padding: EdgeInsets.only(left: 10, top: 20),
    child: FloatingActionButton(
      child: Icon(Icons.arrow_back, size: 35, color: Colors.white,),
      backgroundColor: Colors.black,
      splashColor: Colors.deepPurpleAccent,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}

Container UIFPlate (double minWidth, String text, double fontSize, double letterSpace, double thickness, double padding) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: FlatButton(
      minWidth: minWidth,
      padding: EdgeInsets.all(padding),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.deepPurpleAccent, width: thickness),
      ),
      child: Text(
          text, style: TextStyle(color: Colors.white, fontSize: fontSize, letterSpacing: letterSpace)),
      splashColor: Colors.deepPurpleAccent,
      color: Colors.black,
    ),
  );
}

Container UIHButton (double minWidth, String text,Icon icons, double fontSize, Widget destination, context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      minWidth: minWidth,
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.deepPurpleAccent, width: 3.0),
      ),
      child: Column(
        children: <Widget>[
          icons,
          SizedBox(height: 45,),
          Text(text, style: TextStyle(color: Colors.white, fontSize: fontSize)),
        ],
      ),
      splashColor: Colors.deepPurpleAccent,
      color: Colors.black,
    ),
  );
}

Card ListPlate (double height, double width, String text, IconData icon, double size, double fontSize) {
  return Card(
    color: Colors.black,
    child: Container(
      height: height,
      width: width,
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          Icon(icon, size: size,
            color: Colors.white,
            semanticLabel: text,),
          SizedBox(width: 20,),
          Text(
            text, style: TextStyle(color: Colors.white, fontSize: fontSize,),),
        ],
      ),
    ),
  );
}

Container HubPlate (double minWidth, String text,Icon icons, double fontSize, Widget destination, context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      minWidth: minWidth,
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.deepPurpleAccent, width: 3.0),
      ),
      child: Column(
        children: <Widget>[
          icons,
          SizedBox(height: MediaQuery.of(context).size.height/60,),
          Text(text, style: TextStyle(color: Colors.white, fontSize: fontSize)),
        ],
      ),
      splashColor: Colors.deepPurpleAccent,
      color: Colors.black,
    ),
  );
}

Card ListPlateWithImg (double height, double width, String text, Image img, double size, double fontSize) {
  return Card(
    color: Colors.black,
    child: Container(
      height: height,
      width: width,
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          img,
          SizedBox(width: 20,),
          Text(
            text, style: TextStyle(color: Colors.white, fontSize: fontSize,),),
        ],
      ),
    ),
  );
}
