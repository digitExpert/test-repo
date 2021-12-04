import 'package:collectivity_demo/model/constant.dart';
import 'package:flutter/material.dart';

class InscriptionScreen extends StatefulWidget {
  @override
  _InscriptionScreenState createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
  TextEditingController _etStudentName = TextEditingController();
  TextEditingController _etStudentPhoneNumber = TextEditingController();
  TextEditingController _etStudentAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Center(
              child: Text('Adhésion',
                  style: TextStyle(
                      fontSize: 23,
                      color: AppTheme.primary,
                      fontWeight: FontWeight.bold)),
            ),
            TextFormField(
              controller: _etStudentName,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.primary, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primary),
                ),
                labelText: 'Prénom',
                labelStyle: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _etStudentPhoneNumber,
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.primary, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primary),
                ),
                labelText: 'Nom',
                labelStyle: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _etStudentPhoneNumber, // à changer
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.primary, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primary),
                ),
                labelText: 'Téléphone',
                labelStyle: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _etStudentPhoneNumber, // à changer
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.primary, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primary),
                ),
                labelText: 'Mot de passe',
                labelStyle: TextStyle(color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
              child: TextFormField(
                controller: _etStudentPhoneNumber, // aussi
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppTheme.primary, width: 2.0)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppTheme.primary),
                  ),
                  labelText: 'Numéro carte electeur',
                  labelStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Text('Sexe',
                  style: TextStyle(fontSize: 16, color: Colors.black54)),
            ),
            ToggleButtons(
              color: Colors.black,
              selectedColor: Colors.white,
              fillColor: AppTheme.primary,
              selectedBorderColor: AppTheme.primary,
              borderRadius: BorderRadius.circular(4),
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Homme')),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Femme')),
              ],
              onPressed: (int index) {
/*                   setState(() {
                      for (int buttonIndex = 0; buttonIndex < _isSelectGender.length; buttonIndex++) {
                        if (buttonIndex == index) {
                          _isSelectGender[buttonIndex] = true;
                        } else {
                          _isSelectGender[buttonIndex] = false;
                        }
                      }
                    }); */
              },
              isSelected: [true, false],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _etStudentAddress,
              maxLines: null,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppTheme.primary),
                  ),
                  labelText: 'Commune',
                  labelStyle: TextStyle(color: Colors.black54)),
            ),
            SizedBox(height: 40),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => AppTheme.primary,
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                ),
                onPressed: () {
                  //   _studentBloc.add(AddStudent(sessionId: '5f0e6bfbafe255.00218389', studentName: _etStudentName.text, studentPhoneNumber: _etStudentPhoneNumber.text, studentGender: _isSelectGender[0]?'male':'female', studentAddress: _etStudentAddress.text, apiToken: apiToken));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'S\'inscrire',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
