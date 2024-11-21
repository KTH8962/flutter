import 'package:flutter/material.dart';
import 'package:country_calling_code_picker/picker.dart';

class Countrypicker extends StatefulWidget {
  const Countrypicker({super.key});

  @override
  State<Countrypicker> createState() => _CountrypickerState();
}

class _CountrypickerState extends State<Countrypicker> {
  Country? _selectedCountry;

  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }


  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Calling Code Picker'),
      ),
      body: Center(
        child: Column(
          children: [
            country == null ? Container(): Column(
              children: [
                Image.asset(
                  country.flag,
                  package: countryCodePackageName,
                  width: 100,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '${country.callingCode} ${country.name} (${country.countryCode})',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ]
            ),
            ElevatedButton(
                onPressed: () async {
                  final country = await showCountryPickerSheet(context,);
                  if (country != null) {
                    setState(() {
                      _selectedCountry = country;
                    });
                  }
                },
                child: Text("선택")
            )
          ],
        ),
      ),
    );
  }
}
