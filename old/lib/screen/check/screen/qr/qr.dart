import 'package:flutter/material.dart';
import 'package:autodrive/components/app_bar/primary_app_bar.dart';
import 'package:autodrive/animations/slide_right_route.dart';
import 'reader.dart';
import 'writer.dart';
import 'preference.dart' as qrPreference;

class QrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        primaryAppBarTitle: 'QR',
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () => Navigator.push(
                  context,
                  SlideRightRoute(
                    widget: qrPreference.PreferenceScreen(),
                  ),
                ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () => Navigator.push(
                  context,
                  SlideRightRoute(
                    widget: QrreaderScreen(),
                  ),
                ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () => Navigator.push(
                  context,
                  SlideRightRoute(
                    widget: Qrwriter(),
                  ),
                ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () => Navigator.push(
                  context,
                  SlideRightRoute(
                    widget: Qrwriter(),
                  ),
                ),
          ),
        ],
      ),
      body: Container(
        child: Text('QR'),
      ),
    );
  }
}
