import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String content;
  final bool italic;
  final bool upsideDown;

  const Paragraph(this.content, {this.italic = false, this.upsideDown = false});

  @override
  Widget build(BuildContext context) {
    final paragraph = Text(content, style: TextStyle(fontStyle: italic ? FontStyle.italic : FontStyle.normal));
    return upsideDown ? RotatedBox(quarterTurns: 2, child: paragraph) : paragraph;
  }
}

class Heading extends StatelessWidget {
  final String content;

  const Heading(this.content);

  @override
  Widget build(BuildContext context) {
    return Text(content, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18));
  }
}
