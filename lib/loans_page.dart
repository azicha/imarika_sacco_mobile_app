import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LoansPage extends StatefulWidget {
  const LoansPage({super.key});

  @override
  State<LoansPage> createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {
  final amountcontroller = TextEditingController();
  DateTime date = DateTime.now();
  final _user = Hive.box('user');
  // ignore: prefer_typing_uninitialized_variables
  var userNo;
  int savingsBalance = 0;
  List<String> duration = [
    '90 DAYS @ 9.30%',
    '180 DAYS @ 12.50%',
    '1 YEAR @ 18.00%',
  ];
  String? selectedrate;

  @override
  void initState() {
    // transactiondate = DateFormat.yMMMEd().format(date);
    getUserphone();
    getuser();
    super.initState();
  }

  void getUserphone() {
    var user = _user.get("USER");
    setState(() {
      userNo = user[0];
    });
  }

  void interestCalculations() {
    if (amountcontroller.text.isNotEmpty && selectedrate != null) {
      switch (selectedrate) {
        case '90 DAYS @ 9.30%':
          var interest = double.parse(amountcontroller.text) * 0.093;
          print(interest);
          break;
        case '180 DAYS @ 12.50%':
          var interest = double.parse(amountcontroller.text) * 0.125;
          print(interest);
          break;
        case '1 YEAR @ 18.00%':
          var interest = double.parse(amountcontroller.text) * 0.18;
          print(interest);
          break;
      }
    }
  }

  Future<void> getuser() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection("savings_entity")
        .doc(userNo)
        .get();
    var data = snapshot.data() as Map<String, dynamic>;
    setState(() {
      savingsBalance = data['balance'] * 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        style: BorderStyle.none,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Loan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.local_atm_outlined,
                        size: 46,
                      ),
                      const Text(
                        'Loan Limit',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        savingsBalance.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DropInput(
                items: duration,
                selectedValue: selectedrate,
                hint: 'Select Duration',
                onChanged: (String? value) {
                  setState(() {
                    selectedrate = value;
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: amountcontroller,
              decoration: const InputDecoration(
                hintText: 'ENTER AMOUNT',
                hintStyle: TextStyle(color: Colors.black26),
                focusedBorder: border,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: interestCalculations,
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                fixedSize: MaterialStatePropertyAll(
                  Size(150, 40),
                ),
              ),
              child: const Text('Submit'),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'You\'ll be required to pay',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '10000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'On.....',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DropInput extends StatefulWidget {
  final List<String> items;
  final String hint;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  const DropInput({
    required this.items,
    required this.hint,
    this.selectedValue,
    required this.onChanged,
  });

  @override
  _DropInputState createState() => _DropInputState();
}

class _DropInputState extends State<DropInput> {
  String? selectedValue;

  void handleChanged(String? value) {
    setState(() {
      selectedValue = value;
    });
    widget.onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(7),
        ),
        child: DropdownButton<String>(
          padding: const EdgeInsets.only(left: 8),
          isExpanded: true,
          borderRadius: BorderRadius.circular(20),
          dropdownColor: Colors.grey[100],
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          style: const TextStyle(color: Colors.black, fontSize: 20),
          underline: Container(),
          value: selectedValue ?? widget.selectedValue,
          hint:
              selectedValue == null ? Text(widget.hint) : Text(selectedValue!),
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: handleChanged,
        ),
      ),
    );
  }
}
