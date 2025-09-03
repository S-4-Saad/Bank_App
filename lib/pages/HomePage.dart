import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/appbar.dart';
import '../states/user_provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // Get the user name from the provider
    final userName = Provider.of<UserProvider>(context).name ?? "";

    return Scaffold(
      // Append the userName to "Hi! "
      appBar: customAppBar(context, "Hi! $userName"),
      body: Container(),
    );
  }
}
