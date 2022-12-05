import 'package:bmicalculator/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:decorated_icon/decorated_icon.dart';

const activecardscolor = Colors.white;

class Inputpage extends StatefulWidget {
  const Inputpage({key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: layoutcontainers(
                  colours: activecardscolor,
                  cardchild: Iconwighet(icon: Icons.male_outlined,label: 'MALE',),
                )),
                Expanded(
                    child: layoutcontainers(
                        colours: activecardscolor,
                        cardchild: Iconwighet(
                          icon: Icons.female,
                          label: 'FEMALE',
                        )))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: layoutcontainers(
                  colours: activecardscolor,
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: layoutcontainers(colours: activecardscolor)),
                Expanded(
                    child: layoutcontainers(
                  colours: activecardscolor,
                ))
              ],
            ),
          ),
          Container(
            child: Center(
                child: Text(
              'CALCULATE',
              style: TextStyle(
                  color: Color(0xFF278EEB),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
            color: activecardscolor,
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 5),
          )
        ],
      ),
    );
  }
}

class Iconwighet extends StatelessWidget {
  Iconwighet({this.icon, this.label});
  final IconData icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedIcon(icon,
            size: 80,
            color: Color(0xFF278EEB),
            shadows: [BoxShadow(blurRadius: 10, color: Color(0xFF278EEB))]),
        Text(
          label,
          style: TextStyle(color: Color(0xFF278EEB)),
        )
      ],
    );
  }
}

class layoutcontainers extends StatelessWidget {
  layoutcontainers({this.colours, this.cardchild});
  final Widget cardchild;
  Color colours;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: activecardscolor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
