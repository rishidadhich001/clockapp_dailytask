import 'package:flutter/material.dart';
String img1="https://media.tenor.com/ofWiNbftFW0AAAAM/lord-shiv-ji.gif";
String img2="https://i.gifer.com/origin/20/20d7ae18e4271de49ac9430a2329dfa6_w200.gif";
String strap="assets/img/strap.jpg";
String ph="https://plus.unsplash.com/premium_photo-1672242577985-03a14f1389db?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fHww";
String logo="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfOkYOLjWU1r4EzXrP4gyAXHQwR6SOzsTVUA&s";
List drawer=[
  {
    'icon':Icons.list_alt,
    'name':'Interest',
  },
  {
    'icon':Icons.video_settings,
    'name':'My Courses',
  },
  {
    'icon':Icons.show_chart,
    'name':'Todo/Done',
  },
  {
    'icon':Icons.file_download_outlined,
    'name':'Offline Articles',
  },
  {
    'icon':Icons.star,
    'name':'Rate us',
  },
  {
    'icon':Icons.support_agent,
    'name':'Support',
  },
  {
    'icon':Icons.settings,
    'name':'Settings',
  },
  {
    'icon':Icons.logout,
    'name':'Log out',
  },
];
DateTime dateTime=DateTime.now();
List days = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun',
];
List months = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
];
List img=[
  'assets/img/sunrise1.jpeg',
  'assets/img/fullday1.jpeg',
  'assets/img/afternoon1.jpeg',
  'assets/img/evening1.jpeg',
  'assets/img/night1.jpeg',
  'assets/img/moon1.jpeg',
];
gif()
{
  if(dateTime.hour>=6 && dateTime.hour<9)
  {
    return img[0];
  }
  else if(dateTime.hour>=9 && dateTime.hour<12)
  {
    return img[1];
  }
  else if(dateTime.hour>=12 && dateTime.hour<16)
  {
    return img[2];
  }
  else if(dateTime.hour>=16 && dateTime.hour<19)
  {
    return img[3];
  }
  else if(dateTime.hour>=19 && dateTime.hour<24)
  {
    return img[4];
  }
  else if(dateTime.hour>=0 && dateTime.hour<6)
  {
    return img[5];
  }
}
int second=0;
int minute=0;
int hour=0;
bool stop=false;

var timersecond=0;
var timerminute=0;
var timerhour=0;
bool timerstop=false;

TextEditingController fthour = TextEditingController();
TextEditingController ftminute = TextEditingController();
TextEditingController ftsecond = TextEditingController();