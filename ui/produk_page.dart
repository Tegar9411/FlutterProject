import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/produk_detail.dart';
import 'package:flutter_application_2/ui/produk_form.dart';
  
 class ProdukPage extends StatefulWidget {
   const ProdukPage({Key? key}) : super(key: key);
    @override
   _ProdukPageState createState() => _ProdukPageState();
 }
  
 class _ProdukPageState extends State<ProdukPage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('Data Produk'),
         actions: [
           GestureDetector(
             //menampilkan icon +
             child: const Icon(Icons.add),
             //pada saat icon + di tap
             onTap: () async {
               //berpindah kehalaman ProdukForm
               Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => const ProdukForm()));
             })           
         ],
       ),
       body: ListView(
         children: const [
           // List 1
           Card(
             child: ListTile(
               title: Text('Kulkas'),
               subtitle: Text('2500000'),
             ),
           ),
           // List 2
           Card(
             child: ListTile(
               title: Text('TV'),
               subtitle: Text('5000000'),
             ),
           ),
           // List 3
           Card(
             child: ListTile(
               title: Text('Mesin Cuci'),
               subtitle: Text('1500000'),
             ),
           )
         ],
       ),
     );
   }
 }

 class ItemProduk extends StatelessWidget {
   final String? kodeProduk;
   final String? namaProduk;
   final int? harga;

   const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
       : super(key: key);
  
   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       child: Card(
         child: ListTile(
           title: Text(namaProduk.toString()),
           subtitle: Text(harga.toString()),
         ),
       ),
        onTap: () {
         Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context) => ProdukDetail(
                       kodeProduk: kodeProduk,
                       namaProduk: namaProduk,
                       harga: harga,
                     )));
        },
     );
   }
 }