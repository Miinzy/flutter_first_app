import 'package:flutter/material.dart';
// import 'video_player_widget.dart';             VideoPlayerApp(),
import 'package:graphql_flutter/graphql_flutter.dart';
import './core/Querys/queries.dart';

class Message extends StatefulWidget {
  @override
  _MessagePage createState() => _MessagePage();
}

class _MessagePage extends State<Message> {
  String handleBigString(String text) {
    if (text.length >= 31) {
      var subStr = text.substring(30);
      text = text.replaceAll(subStr, '...');
      return text;
    } else
      return text;
  }

  Widget getListWidgets(res) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < res.length; i++) {
      list.add(
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image(
                width: 50,
                height: 50,
                image: NetworkImage(res[i]['logo'].toString()),
              ),
            ),
            Expanded(
              child: Text(
                res[i]['name'].toString(),
              ),
            ),
          ],
        ),
      );
      print(list);
    }
    return new Row(
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Center(
        child: Query(
          options: QueryOptions(
            documentNode: gql(getClients),
            variables: {'userId': 63},
            pollInterval: 100,
          ),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.exception != null) {
              return Text(result.exception.toString());
            }
            if (result.loading) {
              return Text('Loading...');
            }
            if (result.data != null &&
                result.data['clientsByUser']['clients'].length == 0) {
              return Text('Não existem dados para este usuário.');
            }
            // if (result.data != null) {
            List res = result.data['clientsByUser']['clients'];
            return ListView.builder(
                itemCount: res.length,
                itemBuilder: (context, index) {
                  final data = res[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image(
                          width: 50,
                          height: 50,
                          image: NetworkImage(data['logo'].toString()),
                        ),
                      ),
                      Text(
                        handleBigString(data['name'].toString()),
                      ),
                    ],
                  );
                });
            // }
          },
        ),
      ),
    );
  }
}
