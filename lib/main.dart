import 'package:flutter/material.dart';
import 'package:myapp/items.dart';
import 'package:myapp/sortFilter.dart';

import 'myContact.dart';

var dataDummy = [

  ["Erna Widyastuti", " erna.wid@gmail.com", "085234765876"],
  ["Doddy Agustiawan Tjahjadi", " dat@gmail.com", "087235171286"],
  ["Calvin Lukmantara", " caluk@gmail.com", "085672239396"],
  ["Hariadien Ratmawati Soeprapto", " hari.rs@gmail.com", "087665456554"],
  ["Anna Solana Hamami Kadarachman Amini", "AnnaSolanaHamami@gmail.com"],
  ["Baduraman Dorpi Parlindungan", " bdp@gmail.com", "089776547222"],
  ["Didit Abdurachman Rustandi", " didit@gmail.com", "088561345275"],
  ["Dorys Setiawati Herlambang", " dorse@gmail.com", "081336228365"],
  ["Effendy Husin", " effendy@gmail.com", "082332667675"],
  ["Giovani Maria Ekaputra Suhari", " giovani.mes@gmail.com", "089433564766"],
  ["Irvan Siswanto", "irvansiswanto7@gmail.com", "085648719075"],
  [
    "Kezia Putri Aprilya Kusdianto nigrum",
    " Kezia.pakn@gmail.com",
    "087665887432"
  ]
];

void main() {

  dataDummy = sortFilter(dataDummy);

  var listContact = [];
  for(int i=0; i<dataDummy.length;i++){
    listContact.add(Items(dataDummy[i][0], dataDummy[i][2],dataDummy[i][1], false, true));
  }

  runApp(MyContact(listContact));
}