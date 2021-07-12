import 'package:flutter/material.dart';
import 'package:mini_ecommerce/screens/home_screen/components/body.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return buildBody(context)
    ;
  }
}
