import 'package:flutter/material.dart';
import 'package:instagra_flutter/utils/colors.dart';
import 'package:instagra_flutter/widgets/post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: Image.asset(
          'assets/brandmark-design (21).png',
          height: 32,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outlined,
              color: Colors.amber,
            ),
          ),
        ],
      ),
      body: const PostCard(),
    );
  }
}
