import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {

  TextEditingController dateController = TextEditingController();
  int selectedValue = 1;

  List<String> superheroes = [
    "Batman",
    "Superman",
    "Wonder Woman",
    "Flash"
  ];

  selectedDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    dateController.text = dateSelected.toString().substring(0, 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selection Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                hintText: "Fecha de nacimiento",
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                selectedDate();
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 12,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: Container(),
                icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black54,),
                value: selectedValue,
                items: [
                  DropdownMenuItem(
                    child: Text("Elemento 1"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Elemento 2"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("Elemento 3"),
                    value: 3,
                  ),
                ],
                onChanged: (int? value) {
                  selectedValue = value!;
                  setState(() {

                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}