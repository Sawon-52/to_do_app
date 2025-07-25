import 'package:flutter/material.dart';
import 'package:to_do_app/repository/widgets/ui_helper.dart';
class NutritionsScreen extends StatefulWidget {
  const NutritionsScreen({super.key});

  @override
  State<NutritionsScreen> createState() => _NutritionsScreenState();
}

class _NutritionsScreenState extends State<NutritionsScreen> {
  int _selectedDayIndex = 2;
  int _selectedMealTime = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:  EdgeInsets.symmetric(horizontal:0.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Daily', style:(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black87,
                      )
                  ),),
                  Text('Nutritions', style:(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black87,
                      )
                  ),)
                ]
              ),

            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15.0),
              ),
              width: 70,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.black38,
                    size: 20,
                  ),
                  // const SizedBox(width: 10),
                  Icon(
                    Icons.calendar_month,
                    color: Colors.black38,
                    size: 20,
                  ),
                ],
              ) ,
            ),
          ],
        ),
      ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //month day card
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 0.0, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                CustomMonthDaysCard(monthName: 'Aug', day:'27', isSelected: _selectedDayIndex == 1),
                CustomMonthDaysCard(monthName: 'Aug', day:'28',  isSelected: _selectedDayIndex == 2),
                CustomMonthDaysCard(monthName: 'Aug', day:'29',  isSelected: _selectedDayIndex == 3),
                CustomMonthDaysCard(monthName: 'Aug', day:'30',  isSelected: _selectedDayIndex == 4),
              ]
            ),
          ),

          Container(
            padding:  EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:  EdgeInsets.symmetric(horizontal: 2.0, vertical: 0),
                  margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15),
                  // width: 500,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.black12 ,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomEatingTimeSlider(mealTime: 'Breakfast', isSelected: _selectedMealTime == 1),
                          CustomEatingTimeSlider(mealTime: 'Lunch', isSelected: _selectedMealTime == 2),
                          CustomEatingTimeSlider(mealTime: 'Dinner', isSelected: _selectedMealTime == 3),
                        ]
                    ) ,
                  ) ,
                ),

                Container(
                  child: Column(
                    spacing: 6,
                    children: [
                      customMealItemCard(
                        mealName: 'Salad with egg',
                        calories: '294',
                        weight: '100',
                        imageUrl: '',
                        protein: '25 g',
                        carbs: '21 g',
                        fat: '14 g',
                      ),

                      customMealItemCard(
                        mealName: 'Green vegetable',
                        calories: '394',
                        weight: '200',
                        imageUrl: '',
                        protein: '27 g',
                        carbs: '32 g',
                        fat: '42 g',

                      ),

                      // customMealItemCard(
                      //   mealName: 'Slice of Pineapple',
                      //   calories: '197',
                      //   weight: '247',
                      //   imageUrl: '',
                      //   protein: '84 g',
                      //   carbs: '95 g',
                      //   fat: '72 g',
                      // ),

                    ],
                  ),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}
