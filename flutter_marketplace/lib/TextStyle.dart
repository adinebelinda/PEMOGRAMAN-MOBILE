import 'package:flutter/material.dart';

final TextStyle fadedTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0x99ffffff),
);

final TextStyle whiteHeadingTextStyle= TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: Color(0xffffffff),
);

final TextStyle categoryTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color:Colors.white,
);

final TextStyle selectedCategoryTextStyle = categoryTextStyle.copyWith(
  color: Colors.red[300],
);

final TextStyle eventTitleTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color:Colors.black,
);

final TextStyle eventTitleWhiteTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final TextStyle  eventLocationTextStyle = TextStyle(
  fontSize: 20.0,
  color:Colors.black,
);

final TextStyle guestTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
);

final TextStyle punchLine1TextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w800,
  color: Colors.red[300],
);

final TextStyle punchLine2TextStyle = punchLine1TextStyle.copyWith(
  color: Colors.black,
);