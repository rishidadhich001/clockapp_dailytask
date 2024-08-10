import 'package:flutter/material.dart';
// String img="https://media.tenor.com/ofWiNbftFW0AAAAM/lord-shiv-ji.gif";
// String img2="https://i.gifer.com/origin/20/20d7ae18e4271de49ac9430a2329dfa6_w200.gif";
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
  'Asset/img/sunrise.jpeg',
  'Asset/img/full day.jpeg',
  'Asset/img/afternoon.jpeg',
  'Asset/img/evening.jpeg',
  'Asset/img/night.jpeg',
  'Asset/img/moon.jpeg',
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