import 'package:datecetera_app/MainUi/myprofileallsectionsscreen/myprofile_settingsection_editsection_screen.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/accountsettings_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/actionsection_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/supportsection_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/upperappbar_widget.dart';
import 'package:flutter/material.dart';

class MyprofileSetingsectionScreen extends StatefulWidget {
  const MyprofileSetingsectionScreen({super.key});

  @override
  State<MyprofileSetingsectionScreen> createState() =>
      _MyprofileSetingsectionScreenState();
}

class _MyprofileSetingsectionScreenState
    extends State<MyprofileSetingsectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Container(
            child: Column(
              children: [
                UpperappbarWidget(
                  title: 'Settings',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 20),
                AccountsettingsWidget(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyprofileSettingsectionEditsectionScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),

                SupportsectionWidget(),
                SizedBox(height: 20),

                ActionsectionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
