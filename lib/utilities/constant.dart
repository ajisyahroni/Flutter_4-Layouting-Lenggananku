import 'package:Lenggananku_Layout/extensions/HexColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//theme color
final Color primaryColor = HexColor.fromHex('#7957EC');
final Color accentColor = HexColor.fromHex('#FF9100');

// type color
final Color successColor = HexColor.fromHex('#2ED98A');
final Color secondaryColor = HexColor.fromHex('#707070');

// FOR GRADIENT
final Color startGradient = HexColor.fromHex('#7957EC');
final Color endGradient = HexColor.fromHex('#9D3CDC');

// svg assets
// final String lengganankuIcon = 'assets/svg/face-24px.svg';
final Widget lengganankuIcon = SvgPicture.asset(
  'assets/svg/happy-face.svg',
);
