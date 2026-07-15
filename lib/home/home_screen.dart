import 'package:contact_assignment/home/widgets/elavated_button_widget.dart';
import 'package:contact_assignment/home/widgets/text_field_widget.dart';
import 'package:contact_assignment/utils/app_assets.dart';
import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:contact_assignment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        title: Image(
          image: AssetImage(AppAssets.newLogo),
          width: SizeConfig.getWidth(context) * .29,
          height: SizeConfig.getHeight(context) * .04,
        ),
      ),
      backgroundColor: AppColors.darkBlue,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getWidth(context) * 0.07,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: SizeConfig.getHeight(context) * 0.02,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(AppColors.gold, BlendMode.srcATop),
              child: Lottie.asset(
                'assets/json/new_list_purple.json',
                reverse: false,
                repeat: false,
              ),
            ),
            Text(
              'There is No Contacts Added Here',
              style: AppStyles.medium20Gold,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  height:
                  SizeConfig.getHeight(context)*.53,
                  decoration: BoxDecoration(
                    color: AppColors.darkBlue,
                    borderRadius:  BorderRadius.circular(40),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.getWidth(context)*.04,vertical: SizeConfig.getHeight(context)*.02),
                      child: Column(
                        spacing: SizeConfig.getHeight(context)*.01,
                        children: [
                          Row(
                            spacing: SizeConfig.getWidth(context)*.05,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.gold),
                                    borderRadius: BorderRadius.circular(28)
                                ),
                                height: SizeConfig.getHeight(context)*.16,
                                child: Lottie.asset(
                                  'assets/json/image_picker.json',
                                  delegates: LottieDelegates(
                                    values: [
                                      ValueDelegate.colorFilter(
                                        ['Layer 7', 'Group 1', 'Fill 1'],
                                        value: ColorFilter.mode(
                                          AppColors.darkBlue,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Expanded(
                                child: Column(
                                  spacing: SizeConfig.getHeight(context)*.02,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('User Name',style: AppStyles.medium16Gold,),
                                    Divider(color: AppColors.gold,height: 5,),
                                    Text('example@email.com',style: AppStyles.medium16Gold),
                                    Divider(color: AppColors.gold,height: 5,),
                                    Text('+200000000000',style: AppStyles.medium16Gold),
                                  ],
                                ),
                              )
                            ],
                          ),
                          TextFieldWidget(hitText: 'Enter User Name',type: TextInputType.name,),
                          TextFieldWidget(hitText: 'Enter User Email',type: TextInputType.emailAddress,),
                          TextFieldWidget(hitText: 'Enter User Phone',type: TextInputType.number),
                          ElevatedButtonWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: AppColors.gold,
        child: Icon(Icons.add),
      ),

    );
  }
}
