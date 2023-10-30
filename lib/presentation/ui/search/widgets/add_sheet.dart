import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/config/app_color.dart';
import '../../../../core/config/app_text_style.dart';
import '../../../../core/widgets/shared/custom_button.dart';

class AddSheet extends StatefulWidget {
  const AddSheet({super.key});

  @override
  State<AddSheet> createState() => _AddSheetState();
}

class _AddSheetState extends State<AddSheet> {

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  int? selectedMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 19),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add', style: _textStyle.bodyMedium,),
                    InkResponse(
                        onTap: ()=>Get.back(),
                        child: Icon(Icons.cancel)
                    )
                  ],
                ),

              ],
            ),
          ),
          addType(context: context, text: 'Username', index: 1),
          const SizedBox(height: 20,),
          addType(context: context, text: 'Phone number', index: 2),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: CustomFilledButton(text: 'add', click: selectedMode == null ? null : (){

            }),
          ),
          const SizedBox(height: 22,),
        ],
      ),
    );
  }


  Widget addType({
    required BuildContext context,
    required String text,
    required int index
  }){
    var theme =  Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: (){
            setState(() {
              selectedMode = index;
            });
          },
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            //height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: selectedMode == index ? AppColor.secondaryColor: AppColor.dividerColor
                )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20),
              child: Row(
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 2,
                            color: selectedMode == index ? AppColor.secondaryColor: AppColor.dividerColor
                        ),
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: selectedMode == index ? AppColor.secondaryColor: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Text(text, style: theme.textTheme.displayMedium,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}