import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ItemExpansion> _dataExpansion = ItemExpansion().getDataItem();

  Drawer _buildDrawer(context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "logo.png",
                    width: 100.0,
                    height: 100.0,
                  ),
                  Text(
                    "Belajar Flutter",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.pushNamed(context, "/");
            },
            child: ListTile(
              title: Text(
                "Flutter Dasar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              leading: Icon(Icons.arrow_forward_ios),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/dartPad");
            },
            child: ListTile(
              title: Text(
                "DartPad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              leading: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget expansionPanelList() {
      return ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _dataExpansion[index].isExpanded = !isExpanded;
          });
        },
        children: _dataExpansion.map<ExpansionPanel>((ItemExpansion item) {
          return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    item.headerValue,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                );
              },
              body: Column(
                children: <Widget>[
                  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: item.expandTitle.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(item.expandTitle[index]),
                      subtitle: Text(item.expandSubTitle[index]),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.pushNamed(context, item.route[index]);
                      },
                    ),
                  ),
                ],
              ),
              isExpanded: item.isExpanded);
        }).toList(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Flutter"),
      ),
      body:
          SingleChildScrollView(child: Container(child: expansionPanelList())),
      drawer: _buildDrawer(context),
    );
  }
}

class ItemExpansion {
  List<String> expandTitle;
  List<String> expandSubTitle;
  String headerValue;
  List<String> route;
  bool isExpanded;

  ItemExpansion(
      {this.expandTitle,
      this.headerValue,
      this.isExpanded = false,
      this.expandSubTitle,
      this.route});

  List<ItemExpansion> getDataItem() {
    List<ItemExpansion> data = List();
    data.add(ItemExpansion(
        expandTitle: ["Program Dasar", "Variable"],
        expandSubTitle: ["Penulisan kode dart", "Mengenal beberapa variable"],
        headerValue: "Program Dasar",
        route: ["/programDasar", "/variable"]));
    data.add(ItemExpansion(
        expandTitle: ["Number", "String"],
        expandSubTitle: [
          "Mengenal tipe data angka",
          "Mengenal tipe data String"
        ],
        headerValue: "Tipe Data",
        route: ["/number", "/string"]));
    // data.add(ItemExpansion(
    //     expandTitle: ["Program Dasar"], expandSubTitle: ["subtitle"], headerValue: "Program Dasar 3"));

    return data;
  }
}
