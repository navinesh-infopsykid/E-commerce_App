
import 'package:flutter_layout_grid/flutter_layout_grid.dart';


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color abc= Color(0xff1f0512);
//Color abc= Color(0xffd91979);

//Color pur= Color(0xff1e0438);
double ht=80;
double wt=80;
double hte=90;
double wte=90;
double font=50;

//Color? ha = Theme.of(context).colorScheme?.primary;
Color pur= Colors.black;
Color card= Colors.purple.shade100;
Color icons = Colors.black;

TextStyle sub =TextStyle(color: Colors.black54,
    fontSize: 14,fontWeight: FontWeight.bold);

TextStyle v= GoogleFonts.lato(
textStyle: TextStyle(color: Colors.white, ),
);
TextStyle heading= GoogleFonts.lato(
  textStyle: TextStyle(  fontSize: 16,fontWeight: FontWeight.bold),
);

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);

}

List lis= modelData.map((e) => Model(e["image"], e["text"])).toList();

var modelData = [

  {"image":"assets/images/1.jpg","text":"hi"},
  {"image":"assets/images/3.jpg","text":"hi2"},
  {"image":"assets/images/1.jpg","text":"hi"},
  {"image":"assets/images/1.jpg","text":"hi"},
  {"image":"assets/images/1.jpg","text":"hi"},
{"image":"assets/images/1.jpg","text":"hi"},
];
class Song
{
  String? image;
  String? text;
  String? txt;

  Song(this.image,this.text,this.txt);
}
List li= songdata.map((e) => Song(e["image"], e["text"], e["txt"])).toList();

var songdata = [
  {"image":"assets/images/1.jpg","text":"Heat waves","txt":"Glass animals"},
  {"image":"assets/images/3.jpg","text":"STAY","txt":"Justin Bieber"},
  {"image":"assets/images/5.jpg","text":"","txt":""},
  {"image":"assets/images/1.jpg","text":"","txt":""},
  {"image":"assets/images/3.jpg","text":"","txt":""},
  {"image":"assets/images/5.jpg","text":"","txt":""},
  {"image":"assets/images/1.jpg","text":"","txt":""},
  {"image":"assets/images/3.jpg","text":"","txt":""},
  {"image":"assets/images/5.jpg","text":"","txt":""},
  {"image":"assets/images/3.jpg","text":"","txt":""},
  {"image":"assets/images/1.jpg","text":"","txt":""},

];
class mod{
  String? mimage;
 mod(this.mimage) ;
}

List male=moddata.map((e) => mod(e["mimage"])).toList();

var moddata = [
  {"mimage":"assets/images/M1.jpg"},
  {"mimage":"assets/images/M2.jpg"},
  {"mimage":"assets/images/M3.jpg"},
  {"mimage":"assets/images/M4.jpg"},
  {"mimage":"assets/images/M5.jpg"},
];

class fmod{
  String? fimage;

  fmod(this.fimage) ;
}
List female=fmoddata.map((e) => fmod(e["fimage"])).toList();


var fmoddata = [
  {"fimage":"assets/images/F2.jpeg"},
  {"fimage":"assets/images/F3.jpeg"},
  {"fimage":"assets/images/F5.jpg"},
];

class gmod{
  String? mgimage;
  gmod(this.mgimage) ;
}

List gmale=gmoddata.map((e) => gmod(e["mgimage"])).toList();

var gmoddata = [
  {"mgimage":"assets/images/mg1.jpg"},
  {"mgimage":"assets/images/mg2.jpg"},
  {"mgimage":"assets/images/mg5.jpg"},
];

class gfmod{
  String? fgimage;
  gfmod(this.fgimage) ;
}

List gfemale=gfmoddata.map((e) => gfmod(e["fgimage"])).toList();

var gfmoddata = [
  {"fgimage":"assets/images/fg2.jpg"},
  {"fgimage":"assets/images/fg1.jpg"},
  {"fgimage":"assets/images/fg3.jpg"},
];

class kmod{
  String? kimage;
  kmod(this.kimage) ;
}

List kids=kmoddata.map((e) => kmod(e["kimage"])).toList();

var kmoddata = [
  {"kimage":"assets/images/kg2.jpg"},
  {"kimage":"assets/images/kg.jpeg"},
  {"kimage":"assets/images/kg3.jpg"},
];

class gridm{
  String? gridmimage;
  gridm(this.gridmimage) ;
}

List gridmale=gridmdata.map((e) => gridm(e["gridmimage"])).toList();

var gridmdata = [
  {"gridmimage":"assets/images/M4.jpg"},
  {"gridmimage":"assets/images/M2.jpg"},
  {"gridmimage":"assets/images/M3.jpg"},
  {"gridmimage":"assets/images/M1.jpg"},
  {"gridmimage":"assets/images/M8.jpeg"},
  {"gridmimage":"assets/images/M6.jpeg"},
  {"gridmimage":"assets/images/M7.jpg"},
  {"gridmimage":"assets/images/M5.jpg"},

  {"gridmimage":"assets/images/M9.png"},
];

class gridf{
  String? gridfimage;
  gridf(this.gridfimage) ;
}

List gridfemale=gridfdata.map((e) => gridf(e["gridfimage"])).toList();

var gridfdata = [
  {"gridfimage":"assets/images/F1.jpeg"},
  {"gridfimage":"assets/images/F2.jpeg"},
  {"gridfimage":"assets/images/F3.jpeg"},
  {"gridfimage":"assets/images/F4.jpg"},
  {"gridfimage":"assets/images/F5.jpg"},
  {"gridfimage":"assets/images/F6.jpeg"},
  {"gridfimage":"assets/images/F7.png"},
  {"gridfimage":"assets/images/F8.jpg"},
  {"gridfimage":"assets/images/F9.png"},
];

class tamil{
  String? letter;
  tamil(this.letter) ;
}

List tamlet=tamilletter.map((e) => tamil(e["letter"])).toList();

var tamilletter = [
  {"letter":"அ"},
  {"letter":"ஆ"},
  {"letter":"இ "},
  {"letter":"ஈ"},
  {"letter":"உ"},
  {"letter":"ஊ"},
  {"letter":"எ"},
  {"letter":"ஏ"},
  {"letter":"ஐ"},
  {"letter":"ஒ"},
  {"letter":"ஓ"},
  {"letter":"ஒள"},
];

class tamilm{
  String? mletter;
  tamilm(this.mletter) ;
}

List mtamlet=mtamilletter.map((e) => tamilm(e["mletter"])).toList();

var mtamilletter = [
  {"mletter":"assets/images/A1.png"},
  {"mletter":"assets/images/A2.png"},
  {"mletter":"assets/images/A3.png"},
  {"mletter":"assets/images/A4.png"},
  {"mletter":"assets/images/A5.png"},
  {"mletter":"assets/images/A6.png"},
  {"mletter":"assets/images/A7.png"},
  {"mletter":"assets/images/A8.png"},
  {"mletter":"assets/images/A9.png"},
  {"mletter":"assets/images/A10.png"},
  {"mletter":"assets/images/A11.png"},
  {"mletter":"assets/images/A12.png"},
  {"mletter":"assets/images/A13.png"},
  {"mletter":"assets/images/A14.png"},
  {"mletter":"assets/images/A15.png"},
  {"mletter":"assets/images/A16.png"},
  {"mletter":"assets/images/A17.png"},
  {"mletter":"assets/images/A18.png"},


];


class audioo{
  String? aud;
  audioo(this.aud) ;
}

List audlet=tamilaudio.map((e) => audioo(e["aud"])).toList();

var tamilaudio = [
  {"aud":"assets/audio/1u.mp3"},
  {"aud":"assets/audio/2u.mp3"},
  {"aud":"assets/audio/3u.mp3"},
  {"aud":"assets/audio/4u.mp3"},
  {"aud":"assets/audio/5u.mp3"},
  {"aud":"assets/audio/6u.mp3"},
  {"aud":"assets/audio/7u.mp3"},
  {"aud":"assets/audio/8u.mp3"},
  {"aud":"assets/audio/9u.mp3"},
  {"aud":"assets/audio/10u.mp3"},
  {"aud":"assets/audio/11u.mp3"},
  {"aud":"assets/audio/12u.mp3"},



];

class names{
  Color? ht;
  names(this.ht) ;
}

List cool=colour.map((e) => names(e[ht] as Color)).toList();

var colour = [
  {ht: Colors.red},
  {ht: Colors.green},
  {ht: Colors.blue},
  {ht: Colors.yellow},
  {ht: Colors.orange},
  {ht: Colors.purple},
  {ht: Colors.pink},
  {ht: Colors.brown},
  {ht: Colors.black},

];


class mei{
  String? mletter;
  mei(this.mletter) ;
}

List meilet=meiletters.map((e) => mei(e["mletter"])).toList();

var meiletters = [
  {"mletter":"க்"},
  {"mletter":"ங்"},
  {"mletter":"ச்"},
  {"mletter":"ஞ்"},
  {"mletter":"ட்"},
  {"mletter":"ண்"},
  {"mletter":"த்"},
  {"mletter":"ந்"},
  {"mletter":"ப்"},
  {"mletter":"ம்"},
  {"mletter":"ய்"},
  {"mletter":"ர்"},
  {"mletter":"ல்"},
  {"mletter":"வ்"},
  {"mletter":"ழ்"},
  {"mletter":"ள்"},
  {"mletter":"ற்"},
  {"mletter":"ன்"},

];


class audiom{
  String? audm;
  audiom(this.audm) ;
}

List audletm=tamilaudiom.map((e) => audiom(e["audm"])).toList();

var tamilaudiom = [
  {"audm":"assets/audio/m1.mp3"},
  {"audm":"assets/audio/m2.mp3"},
  {"audm":"assets/audio/m3.mp3"},
  {"audm":"assets/audio/m4.mp3"},
  {"audm":"assets/audio/m5.mp3"},
  {"audm":"assets/audio/m6.mp3"},
  {"audm":"assets/audio/m7.mp3"},
  {"audm":"assets/audio/m8.mp3"},
  {"audm":"assets/audio/m9.mp3"},
  {"audm":"assets/audio/m10.mp3"},
  {"audm":"assets/audio/m11.mp3"},
  {"audm":"assets/audio/m12.mp3"},
  {"audm":"assets/audio/m13.mp3"},
  {"audm":"assets/audio/m14.mp3"},
  {"audm":"assets/audio/m15.mp3"},
  {"audm":"assets/audio/m16.mp3"},
  {"audm":"assets/audio/m17.mp3"},
  {"audm":"assets/audio/m18.mp3"},




];

class col{
  String? cname;
  col(this.cname) ;
}

List colorsname=colname.map((e) => col(e["cname"])).toList();

var colname = [
  {"cname":"Red"},
  {"cname":"Green"},
  {"cname":"Blue"},
  {"cname":"Yellow"},
  {"cname":"Orange"},
  {"cname":"Purple"},
  {"cname":"Pink"},
  {"cname":"Brown"},
  {"cname":"Black"},
];