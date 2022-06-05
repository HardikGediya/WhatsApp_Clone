import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster4th_pro/models/ios_models/ios_model.dart';
import 'package:outcaster4th_pro/utils/textstyle.dart';

class CupertinoSettingsScreen extends StatefulWidget {
  const CupertinoSettingsScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSettingsScreen> createState() =>
      _CupertinoSettingsScreenState();
}

class _CupertinoSettingsScreenState extends State<CupertinoSettingsScreen> {
  get settingsData => null;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            const Icon(CupertinoIcons.back),
            Text(
              'Settings',
              style: cupertinoBlueText,
            ),
          ],
        ),
        middle: const Text('Account'),
      ),
      backgroundColor: Colors.grey[50],
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 0.3),
              ),
              height: 210,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Privacy'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness:1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Security'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness:1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Two-Step Verification'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness:1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Change Number'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 0.3),
              ),
              height: 100,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Request Account Info'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness:1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Delete My Account'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
