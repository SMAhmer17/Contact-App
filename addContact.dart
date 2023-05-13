import 'package:contactapp/contact.dart';
import 'package:contactapp/home.dart';
import 'package:contactapp/singleContact.dart';
import 'package:flutter/material.dart';

class addContact extends StatefulWidget {
  const addContact({super.key});

  @override
  State<addContact> createState() => _addContactState();
}

TextEditingController nameController = TextEditingController();
TextEditingController surnameController = TextEditingController();
TextEditingController contactController = TextEditingController();

class _addContactState extends State<addContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Add Contact',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: () {
                  //
                  String name = nameController.text.trim();
                  String surname = surnameController.text.trim();
                  String contact = contactController.text.trim();
                  if (name.isNotEmpty &&
                      surname.isNotEmpty &&
                      contact.isNotEmpty) {
                    setState(() {
                      String name = nameController.text.trim();
                  String surname = surnameController.text.trim();
                  String contact = contactController.text.trim();
                  if (name.isNotEmpty &&
                      surname.isNotEmpty &&
                      contact.isNotEmpty) {
                    setState(() {
                      nameController.text = '';
                      surnameController.text = '';
                      contactController.text = '';
                      contacts.add((Contact(
                          name: name, surname: surname, contact: contact)));
                    });
                  }
                    });
                  }
                  //
                
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                
                },
                child: Icon(Icons.done)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
        child: Column(
          children: [
            // Name
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade300,
                border: const OutlineInputBorder(),
                label: const Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                hintText: 'Enter name',
              ),
              keyboardType: TextInputType.name,
              maxLength: 40,
            ),
            const SizedBox(
              height: 12,
            ),
            // SurName
            TextField(
              controller: surnameController,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade300,
                border: const OutlineInputBorder(),
                label: const Text(
                  'Surname',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                hintText: 'Enter SurName',
              ),
              keyboardType: TextInputType.name,
              maxLength: 40,
            ),
            const SizedBox(
              height: 12,
            ),
            //Contact
            TextField(
              controller: contactController,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade900,
                border: const OutlineInputBorder(),
                label: const Text(
                  'Phone No.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                hintText: '+92 _ _ _ _ _ _ _ _ _ _ _',
              ),
              keyboardType: TextInputType.number,
              maxLength: 11,
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
