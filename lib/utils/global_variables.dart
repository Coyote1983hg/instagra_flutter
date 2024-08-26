import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagra_flutter/screens/add_post_screen.dart';
import 'package:instagra_flutter/screens/feed_screen.dart';
import 'package:instagra_flutter/screens/profile_screen.dart';
import 'package:instagra_flutter/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
   FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notif'),
  ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid),
];
