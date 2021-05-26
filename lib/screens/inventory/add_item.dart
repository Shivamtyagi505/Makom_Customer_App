import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:makom_customer_app/utils/index.dart';
import 'package:makom_customer_app/widgets/index.dart';

import '../../constants.dart';

class AddItemsPage extends StatefulWidget {
  @override
  _AddItemsPageState createState() => _AddItemsPageState();
}

class _AddItemsPageState extends State<AddItemsPage> {
  final picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add item",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: GestureDetector(
                      onTap: () {
                        _showPicker(context);
                      },
                      child: _image != null
                          ? _showImage(height)
                          : _showPickUpOption(height)),
                ),
                KTextFormField(
                  label: "Name",
                  hintText: "Item's name",
                  validator: (value) => validateNames(value),
                ),
                KTextFormField(
                  label: "Weight",
                  hintText: "Item's weight in KGs",
                  keyboardType: TextInputType.number,
                  validator: (value) => validateWeight(value),
                ),
                KDropDownField(
                  label: "Type",
                  hintText: _typeOfItem ?? "",
                  onChanged: (value) => setState(() {
                    _typeOfItem = value;
                  }),
                  itemList: _itemTypeList,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () => _onSubmit(context),
        child: Icon(Icons.check),
      ),
    );
  }

  void _onSubmit(context) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text('You have successfully added the item in your inventory.')));
      Navigator.pop(context);
    }
  }

  Widget _showImage(height) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.file(
          _image,
          width: double.infinity,
          height: height * 0.40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _showPickUpOption(height) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(color: labelColor, width: 0.5),
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: height * 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.camera_alt,
            color: Colors.grey[800],
          ),
          SizedBox(height: 10),
          Text("Tap to select an image."),
        ],
      ),
    );
  }

  /// ImagePicker
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  /// Pick image form camera.
  Future _imgFromCamera() async {
    try {
      final pickedFile = await picker.getImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('No image selected. \n $e');
    }
  }

  /// Pick image form gallery.
  _imgFromGallery() async {
    try {
      final pickedFile =
          await picker.getImage(source: ImageSource.gallery, imageQuality: 50);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('No image selected. \n $e');
    }
  }

  String _typeOfItem;
  File _image;
  List<String> _itemTypeList = [
    "Appliances",
    "Books",
    "Car & Motorbike",
    "Clothing & Accessories",
    "Computers & Accessories",
    "Electronics",
    "Furniture",
    "Grocery & Gourmet Foods",
    "Home & Kitchen",
    "Jewellery",
    "Luggage & Bags",
    "Musical Instruments",
    "Office Products",
    "Pet Supplies",
    "Tools & Home Improvement",
  ];
}
