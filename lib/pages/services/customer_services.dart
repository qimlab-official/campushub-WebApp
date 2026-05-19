import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomerServices extends StatefulWidget {
  const CustomerServices({super.key});

  @override
  State<CustomerServices> createState() => _CustomerServicesState();
}

class _CustomerServicesState extends State<CustomerServices> {
  void _showNotAvailableDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(Icons.info),
          title: const Text('Information'),
          content: const Text(
            'To access the latest features, please download our mobile app from the Play Store. The web version will continue to receive critical updates and fixes only.',
          ),
          actions: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _launchURL();
                  },
                  child: const Text('Download for Android'),
                ),
                const SizedBox(height: 10),
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _launchURL();
                  },
                  child: const Text('Download for iOS'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Dismiss'),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Future<void> _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.postalhub.tracker';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchURLHelpdesk() async {
    const url = 'https://helpdesk.campushub.my';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Help & Support Center'),
        ),
        body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 750,
                ),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 3, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        child: Material(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          child: InkWell(
                            onTap: () => _launchURLHelpdesk(),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ListTile(
                                title: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: const Text('Knowledge Base'),
                                ),
                                subtitle: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: const Text(
                                        'Look at the frequently asked questions to find answers to common queries in the knowledge base.')),
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.question_answer_rounded,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    size: 30,
                                  ),
                                ),
                                trailing:
                                    const Icon(Icons.chevron_right_rounded),
                              ),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 3, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        child: Material(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          child: InkWell(
                            onTap: () => _showNotAvailableDialog(context),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ListTile(
                                title: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: const Text('Ticket Support'),
                                ),
                                subtitle: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: const Text(
                                        'Create a case using ticketing system.')),
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.confirmation_num_rounded,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    size: 30,
                                  ),
                                ),
                                trailing:
                                    const Icon(Icons.chevron_right_rounded),
                              ),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 3, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        child: Material(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          child: InkWell(
                            onTap: () => _showNotAvailableDialog(context),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ListTile(
                                title: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: const Text('Parcel Mate'),
                                ),
                                subtitle: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: const Text(
                                        'Ask any queries to our AI agent, Parcel Mate. Operate 24/7, anytime, anywhere.')),
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.support_agent_rounded,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    size: 30,
                                  ),
                                ),
                                trailing:
                                    const Icon(Icons.chevron_right_rounded),
                              ),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 3, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        child: Material(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          child: InkWell(
                            onTap: () {
                              launchUrl(Uri.parse(
                                  'mailto:postalhub.resources@gmail.com'));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ListTile(
                                leading: const Icon(Icons.email_outlined),
                                title: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: const Text('Email (Operating Issue)'),
                                ),
                                subtitle: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: const Text(
                                        'postalhub.resources@gmail.com')),
                                trailing: const Icon(Icons.call_made_rounded),
                              ),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 3, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        child: Material(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          child: InkWell(
                            onTap: () {
                              launchUrl(Uri.parse('tel:+601156765004'));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ListTile(
                                leading: const Icon(Icons.phone_outlined),
                                title: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child:
                                      const Text('Hotline (Operating Issue)'),
                                ),
                                subtitle: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: const Text(
                                        '+601156765004 (Call/WhatsApp)')),
                                trailing: const Icon(Icons.call_made_rounded),
                              ),
                            ),
                          ),
                        ),
                      )),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 15, bottom: 3, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        child: Material(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          child: InkWell(
                            onTap: () {
                              launchUrl(Uri.parse('mailto:support@qimlab.my'));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ListTile(
                                leading: const Icon(Icons.email_outlined),
                                title: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: const Text('Email (Technical Issue)'),
                                ),
                                subtitle: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: const Text('support@qimlab.my')),
                                trailing: const Icon(Icons.call_made_rounded),
                              ),
                            ),
                          ),
                        ),
                      )),
                ])))));
  }
}
