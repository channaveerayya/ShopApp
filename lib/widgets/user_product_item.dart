import 'package:ShopApp/screens/edit_product_screen.dart';
import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final Function deleteHandle;
  UserProductItem(this.id, this.title, this.imageUrl, this.deleteHandle);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue),
              onPressed: () => Navigator.of(context).pushNamed(
                  EditProductScreen.editProductScreenRoute,
                  arguments: id),
            ),
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () async {
                try {
                  await deleteHandle(id);
                } catch (e) {
                  await showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text(
                        'Could not Deleting',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      content: Text('Oops.. Something went wrong'),
                      actions: <Widget>[
                        FlatButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Okay')),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
