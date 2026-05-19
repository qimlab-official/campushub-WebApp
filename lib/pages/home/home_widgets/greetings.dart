import 'package:flutter/material.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';

class Greetings extends StatefulWidget {
  const Greetings({super.key});
  @override
  State<Greetings> createState() => _GreetingsState();
}

class _GreetingsState extends State<Greetings> {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;
  String _greeting = "Oh, Hi!";

  @override
  void initState() {
    super.initState();
    _fetchGreeting();
  }

  Future<void> _fetchGreeting() async {
    try {
      await _remoteConfig.fetchAndActivate();
      String remoteGreeting = _remoteConfig.getString('greetings');
      setState(() {
        _greeting = remoteGreeting.isNotEmpty ? remoteGreeting : 'Oh, Hi!';
      });
    } catch (e) {
      setState(() {
        _greeting = 'Oh, Hi!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                RippleAnimation(
                  repeat: true,
                  color: Theme.of(context).colorScheme.error,
                  minRadius: 14,
                  ripplesCount: 3,
                  size: const Size(52, 52),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/megaphones_purple.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    _greeting,
                    style: const TextStyle(fontSize: 15),
                  ),
                )
              ],
            )));
  }
}
