import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_monty/components/list_items.dart';
import 'package:rick_monty/models/rick_morty.dart';
import 'package:rick_monty/services/api.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  late Future<List<RickMortyModel>> _datas;

  @override
  void initState() {
    super.initState();
    _datas = Api.getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _datas,
      builder:
          (BuildContext context, AsyncSnapshot<List<RickMortyModel>> snapshot) {
        if (snapshot.hasData) {
          List<RickMortyModel> rickList = snapshot.data!;
          //debugPrint(snapshot.data[0].toString());
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemCount: rickList.length,
              itemBuilder: (context, index) {
                var currentChar = rickList[index];
                return ListItemWidget(characher: currentChar);
              });
        } else if (snapshot.hasError) {
          return const Center(child: Text("Hata Çıktı"));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
