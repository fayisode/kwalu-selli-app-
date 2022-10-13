import 'package:flutter/material.dart';

import '../../utils/extensions/string_ext.dart';

class CustomLoaderWidget extends StatelessWidget {
  const CustomLoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('loading'.gif),
            ),
            MaterialButton(onPressed: () {})
          ],
        ),
      );
}
