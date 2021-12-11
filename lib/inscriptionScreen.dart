import 'package:collectivity_demo/model/constant.dart';
import 'package:collectivity_demo/model/district.dart';
import 'package:collectivity_demo/model/membre.dart';
import 'package:flutter/material.dart';

class InscriptionScreen extends StatefulWidget {
  @override
  _InscriptionScreenState createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
  TextEditingController _etStudentName = TextEditingController(text: "Samba");
  TextEditingController _etStudentLastName =
      TextEditingController(text: "Sene");
  TextEditingController _etStudentPhoneNumber =
      TextEditingController(text: "778594412");
  TextEditingController _referantPhoneNumber =
      TextEditingController(text: "769854132");
  TextEditingController _password = TextEditingController(text: "123456");
  TextEditingController _numCarteElecteur =
      TextEditingController(text: "7412587412");
  TextEditingController _numCarteIdentite =
      TextEditingController(text: "9966668887774441");
  TextEditingController _gender = TextEditingController();
  TextEditingController _etStudentAddress =
      TextEditingController(text: "Gouye");

  List<bool> _isSelectGender = [true, false];
  List<String> _selectGenderValues = ['Homme', 'Femme'];

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
              controller: _etStudentLastName,
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
              controller: _referantPhoneNumber, // à changer
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.primary, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primary),
                ),
                labelText: 'Téléphone référant',
                labelStyle: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _password, // à changer
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
                controller: _numCarteElecteur, // aussi
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
            TextFormField(
              controller: _numCarteIdentite, // à changer
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppTheme.primary, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primary),
                ),
                labelText: 'Numéro carte d\'identité',
                labelStyle: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20,
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
                setState(() {
                  _isSelectGender[index] = !_isSelectGender[index];
                });

                _gender.text = _selectGenderValues[index];

                print('selected gender : ${_gender.text}');

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
              isSelected: _isSelectGender,
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
                  labelText: 'Quartier',
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
                  //Créer Membre

                  Membre membre = Membre(
                      nom: _etStudentLastName.text,
                      prenom: _etStudentName.text,
                      password: _password.text,
                      genre: _gender.text,
                      telephone: _etStudentPhoneNumber.text,
                      telephonereferant: _referantPhoneNumber.text,
                      numCarteElecteur: _numCarteElecteur.text,
                      numCarteIdentite: _numCarteIdentite.text,
                      quartier: District(libelle: _etStudentAddress.text));

                  print('new member : $membre');

                  //Appeler le service

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
