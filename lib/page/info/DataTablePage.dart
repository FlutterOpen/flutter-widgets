///
/// Created by NieBin on 2019/5/15
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class DataTablePage extends StatefulWidget {
  @override
  DataTableState createState() => DataTableState();
}

class DataTableState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement
    return Scaffold(
      appBar: AppBar(
        title: Text(PageName.DATA_TABLE),
      ),
      body: DataTable(
        sortColumnIndex: 3,
        columns: [
          DataColumn(label: Text("Hello")),
          DataColumn(label: Text("Hello1")),
          DataColumn(label: Text("Hell2")),
          DataColumn(label: Text("Hell3")),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text("a"), placeholder: true),
            DataCell(Text("b")),
            DataCell(Text("c")),
            DataCell(Text("d")),
          ]),
          DataRow(cells: [
            DataCell(
                EditableText(
                  controller: TextEditingController(text: "a1"),
                  focusNode: FocusNode(debugLabel: "debug"),
                  style: TextStyle(color: BLUE),
                  backgroundCursorColor: RED,
                  cursorColor: TEXT_BLACK,
                ),
                showEditIcon: true, onTap: () {
              print("Hello");
            }),
            DataCell(Text("c2")),
            DataCell(Text("b3")),
            DataCell(Text("a4")),
          ]),
        ],
      ),
    );
  }
}
