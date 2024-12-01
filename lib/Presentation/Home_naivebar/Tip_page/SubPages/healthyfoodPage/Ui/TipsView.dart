import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthyEatingPage extends StatelessWidget {
  // Healthy Eating Tips for PCOS and PCOD
  final List<Map<String, String>> healthyEatingTips = [
    {
      'title': 'Eat a Balanced Diet',
      'include': 'Whole foods rich in fiber, protein, healthy fats, and low glycemic carbohydrates to help manage blood sugar levels.',
      'avoid': 'Highly processed foods and excessive sugars.'
    },
    {
      'title': 'Opt for Anti-Inflammatory Foods',
      'include': 'Foods high in antioxidants and omega-3 fatty acids, like berries, spinach, and fatty fish (salmon, mackerel).',
      'avoid': 'Processed foods with artificial colors and preservatives.'
    },
    {
      'title': 'Control Insulin Levels',
      'include': 'Foods that help manage insulin levels, such as leafy greens, beans, and lentils.',
      'avoid': 'Sugary snacks, refined carbs, and fast food.'
    },
    {
      'title': 'Increase Fiber Intake',
      'include': 'High-fiber foods like oats, quinoa, chia seeds, and vegetables like broccoli.',
      'avoid': 'Refined grains like white rice and white bread.'
    },
    {
      'title': 'Choose Healthy Fats',
      'include': 'Avocados, olive oil, nuts, seeds, and fatty fish.',
      'avoid': 'Trans fats found in fried foods and packaged snacks.'
    },
    {
      'title': 'Stay Hydrated',
      'include': 'Water, herbal teas, and coconut water.',
      'avoid': 'Sugary drinks like soda and fruit juices with added sugar.'
    },
    {
      'title': 'Limit Dairy and Gluten (Optional)',
      'include': 'Plant-based milk (almond, soy) and gluten-free grains like quinoa.',
      'avoid': 'Dairy products and gluten-rich foods if sensitivity exists.'
    },
  ];

  // Alternatives to Forbidden Foods
  final List<Map<String, String>> alternativesToForbiddenFoods = [
    {
      'title': 'Refined Carbs → Whole Grains',
      'forbidden': 'White bread, pastries, refined pasta.',
      'alternative': 'Whole grain bread, quinoa, brown rice, whole-wheat pasta.'
    },
    {
      'title': 'Sugary Snacks → Natural Sweeteners',
      'forbidden': 'Candy, soda, cakes.',
      'alternative': 'Fruit, dark chocolate (70% cocoa or higher), stevia, or monk fruit sweetener.'
    },
    {
      'title': 'Fried Foods → Healthy Cooking Methods',
      'forbidden': 'Fried chicken, chips.',
      'alternative': 'Grilled or baked foods, air-fried dishes, roasted vegetables.'
    },
    {
      'title': 'Dairy Products → Non-Dairy Options',
      'forbidden': 'Milk, cheese, ice cream.',
      'alternative': 'Almond milk, coconut yogurt, plant-based cheese.'
    },
    {
      'title': 'Processed Meats → Lean Protein',
      'forbidden': 'Processed meats (hot dogs, deli meats).',
      'alternative': 'Chicken breast, turkey, tofu, legumes (lentils, chickpeas).'
    },
    {
      'title': 'Sugary Beverages → Water or Herbal Tea',
      'forbidden': 'Soda, energy drinks.',
      'alternative': 'Water, herbal teas (peppermint, chamomile), infused water (with lemon, cucumber).'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthy Eating Tips for PCOS & PCOD'),
      ),
      body: Column(
        children: [
          Image.asset('assets/image (4).png',height:200.h,),
          ListView(
            shrinkWrap: true,
            children: _buildHealthyEatingTips() + _buildAlternativesToForbiddenFoods(),
          ),
        ],
      ),
    );
  }

  // Builds the list of healthy eating tips
  List<Widget> _buildHealthyEatingTips() {
    List<Widget> healthyEatingTipWidgets = [];
    for (var tip in healthyEatingTips) {
      healthyEatingTipWidgets.add(
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // SizedBox(height: 8),

          ExpandablePanel(
            header:Text(
              tip['title']!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            collapsed:  Text(
              'Include: ' + tip['include']!,
              style: TextStyle(
                fontSize: 16,
              ),softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
            expanded: Text('Avoid: ' + tip['avoid']!, softWrap: true, ),
            // tapHeaderToExpand: true,
            // hasIcon: true,
          ),
              // Text(
              //   'Avoid: ' + tip['avoid']!,
              //   style: TextStyle(
              //     fontSize: 16,
              //   ),
              // ),
              Divider()
            ],
          ),
        ),
      );
    }
    return healthyEatingTipWidgets;
  }

  // Builds the list of alternatives to forbidden foods
  List<Widget> _buildAlternativesToForbiddenFoods() {
    List<Widget> alternativeWidgets = [];
    for (var alternative in alternativesToForbiddenFoods) {
      alternativeWidgets.add(
        Card(
          margin: EdgeInsets.all(8),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alternative['title']!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Forbidden: ' + alternative['forbidden']!,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Alternative: ' + alternative['alternative']!,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return alternativeWidgets;
  }
}
