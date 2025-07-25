import 'package:flutter/material.dart';

class CustomMonthDaysCard extends StatelessWidget {
  final String monthName;
  final String day;
  final bool isSelected;

  const CustomMonthDaysCard({
    super.key,
    required this.monthName,
    required this.day,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 85,
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepOrange[400] : Colors.black12,
        borderRadius: BorderRadius.circular(15.0),
        border: isSelected
            ? Border.all(color: Colors.deepOrange, width: 1.0)
            : Border.all(color: Colors.grey, width: 1.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(monthName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.grey[900],
            ),),
            Text(day,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.grey[500],
              ),)
          ],
        ),
      ),

    );
  }
}


class CustomEatingTimeSlider extends StatelessWidget {
  final String mealTime;
  final bool isSelected;

  const CustomEatingTimeSlider({
    super.key,
    required this.mealTime,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height:30,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : null,
        borderRadius: isSelected ? BorderRadius.circular(15.0): null,
      ),
      child: Center(
          child: Text(mealTime, style:(
              TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.grey[900] : null,
              )
          ),)
      )
    );
  }
}

// custom MealItemCard widget
class customMealItemCard extends StatelessWidget {
  final String mealName;
  final String calories;
  final String weight;
  final String imageUrl;
  final String protein;
  final String carbs;
  final String fat;

  const customMealItemCard({
    super.key,
    required this.mealName,
    required this.calories,
    required this.weight,
    required this.imageUrl,
    required this.protein,
    required this.carbs,
    required this.fat,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top section: Image, Meal Name, Calories, Weight, More button
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Meal Image/Icon
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Fallback for image loading errors (if image fails to load)
                  child: Image.network(
                    imageUrl,
                    errorBuilder: (context, error, stackTrace) {
                      return  Center(
                        child: Icon(Icons.fastfood, size: 30, color: Colors.grey),
                      );
                    },
                  ),
                ),
                 SizedBox(width: 12),
                // Meal Name, Calories, Weight
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mealName,
                        style:  TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                       SizedBox(height: 4),
                      Row(
                        children: [
                           Icon(Icons.local_fire_department, color: Colors.orange, size: 16),
                           SizedBox(width: 4),
                          Text(
                            '$calories kcal',
                            style:  TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                           SizedBox(width: 8),
                          Text(
                            '$weight G',
                            style:  TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // More button
                IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.grey),
                  onPressed: null,
                ),
              ],
            ),
            SizedBox(height: 30),
            // Nutrition breakdown section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNutritionItem(
                  context,
                  label: 'Protein',
                  value: protein,
                  color: Colors.green,
                ),
                _buildNutritionItem(
                  context,
                  label: 'Carbs',
                  value: carbs,
                  color: Colors.orange,
                ),
                _buildNutritionItem(
                  context,
                  label: 'Fat',
                  value: fat,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build individual nutrition items (Protein, Carbs, Fat)
  Widget _buildNutritionItem(BuildContext context, {
    required String label,
    required String value,
    required Color color,
  }) {
    return Container(
      child: Row(
        spacing: 10,
        children: [
          Container(
            width: 6,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),

          Column(
            children: [
              Text(
                value,
                style:  TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                label,
                style:  TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
