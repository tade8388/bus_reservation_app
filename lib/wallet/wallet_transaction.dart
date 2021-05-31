// import 'package:bus_reservation_app/wallet_data/data_model.dart';
// import 'package:bus_reservation_app/wallet_data/model.dart';
// import 'package:flutter/material.dart';

// class Wallet_Transaction extends StatefulWidget {
//   @override
//   _Wallet_TransactionState createState() => _Wallet_TransactionState();
// }

// class _Wallet_TransactionState extends State<Wallet_Transaction> {
//     List<Model>models;
//     final columns=['date','EntryStation','Exite Station'];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     this.models = List.of(allmodels);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: buildDataTable(){
//         return DataTable(columns: getColumns(columns) rows: getRows(models))
//       },
//     );
//   }
//   List <DataColumn>getColumn(List<String>columns)=>columns.map((String column) => DtataColumn(label:Text(column),)).toList();
//   List<DataRow>getRows(List<Model>models)=>models.map((Model model)
//   final cells=[model.entryStation,model.exitStation]);
// }
