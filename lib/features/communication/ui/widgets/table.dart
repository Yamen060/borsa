import 'package:flutter/material.dart';

class TableCommunication extends StatelessWidget {
  const TableCommunication({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 45, 15, 0),
      child: Table(
        border: TableBorder.all(color: Colors.black), // إضافة حدود للجدول
        children: const <TableRow>[
          // الصف الأول: رؤوس الأعمدة
          TableRow(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Column 1 Header',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Column 2 Header',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          // الصفوف الستة للبيانات
          TableRow(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 1, Cell 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 1, Cell 2'),
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 2, Cell 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 2, Cell 2'),
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 3, Cell 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 3, Cell 2'),
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 4, Cell 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 4, Cell 2'),
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 5, Cell 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 5, Cell 2'),
              ),
            ],
          ),
          TableRow(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 6, Cell 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Row 6, Cell 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
