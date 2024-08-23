import 'package:flutter/material.dart';
import 'package:instagra_flutter/screens/add_post_screen.dart';
import 'package:instagra_flutter/screens/feed_screen.dart';
import 'package:instagra_flutter/screens/search_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text('notif'),
  Text('profile'),
  
];