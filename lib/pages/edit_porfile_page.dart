import 'package:flutter/material.dart';
import 'package:golf_app/components/app_textfield.dart';
import 'package:golf_app/components/toolbar.dart';
import 'package:golf_app/components/user_avatar.dart';
import 'package:golf_app/config/app_strings.dart';
import 'package:golf_app/styles/app_colors.dart';
import 'package:golf_app/styles/app_text.dart';

enum Gender {none, male, female, other}

class EditPorfilePage extends StatefulWidget {
 EditPorfilePage({super.key, });

  @override
  State<EditPorfilePage> createState() => _EditPorfilePageState();
}

class _EditPorfilePageState extends State<EditPorfilePage> {
var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'edit porfile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children:[ UserAvatar(
                    size: 120,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Icon(Icons.edit,
                      size: 20,
                      color: Colors.black ,))
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ), 
              AppTextField(hint: AppStrings.firstname),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.lastname),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.phoneNumber),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.location),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.birthday),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    AppStrings.gender, 
                    style: AppText.body1.copyWith(
                      fontSize: 12,
                    ),),
                    Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity, 
                            vertical: VisualDensity.minimumDensity
                            ),
                          title: Text(AppStrings.male),
                          value: Gender.male,
                          groupValue: gender,
                          contentPadding: EdgeInsets.zero,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.male;
                          });
                          },
                            ),
                      ),
                    
                   Expanded(
                     child: RadioListTile(
                      visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity, 
                            vertical: VisualDensity.minimumDensity
                            ),
                      title: Text(AppStrings.female),
                      value: Gender.female,
                      groupValue: gender,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {
                      setState(() {
                        gender = Gender.female;
                      });
                                   },
                     ),
                   ),
                   Expanded(
                     child: RadioListTile(
                      visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity, 
                            vertical: VisualDensity.minimumDensity
                            ),
                      title: Text(AppStrings.other),
                      value: Gender.other,
                      groupValue: gender,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {
                      setState(() {
                        gender = Gender.other;
                                   });
                                   },
                     ),
                   ),
                    ],
                  ),
            ],
          ),
              ),
              ]),
            ),
      ),
    );
  }
}