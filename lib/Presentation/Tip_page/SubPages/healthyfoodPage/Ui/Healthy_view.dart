import 'package:flutter/material.dart';
import 'package:ovacare/Core/themes/Colors/ColorsStyle.dart';
import 'package:tab_container/tab_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthyView extends StatelessWidget {
  HealthyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Healthy Tips',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor:ColorStyle.pink,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon:const Icon(Icons.arrow_back_ios,color: Colors.white,) ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
          child: TabContainer(
            color:ColorStyle.pink,
            tabEdge: TabEdge.left,
            tabsStart: 0.1,
            tabsEnd: 0.6,
            childPadding: const EdgeInsets.all(20.0),
            tabs:_getTabs() ,
            selectedTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
            unselectedTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
            ),
            children: _getTabChildren(context),
          ),
        ),
      ),
    );
  }

  /// Generate the tabs based on the content.
  List<Widget> _getTabs() {
    return <Widget>[
      for(int i=1;i<=tips.length;i++)
       Text('${i}',style: const TextStyle(fontWeight: FontWeight.bold),),
    ];
  }

  /// Generate tab children dynamically based on the data.
  List<Widget> _getTabChildren(context) {
    return tips.map((tip) {
      return SingleChildScrollView(
        child: Container(
          height:MediaQuery.of(context).size.height,
          child: Card(
            elevation: 3,
            margin:  EdgeInsets.symmetric(vertical: 10.h),
            child: Padding(
              padding:  const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tip['title'] ?? '',
                    style: TextStyle(
                      fontSize: 22.spMin,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),Text(
                    tip['description'] ?? '',
                    style: TextStyle(
                      fontSize: 14.spMin,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),
                   SizedBox(height: 5.h),
                  const Text(
                    'Include:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ..._buildListItems(tip['include']), // Helper function for "Include"
                  const SizedBox(height: 5),
                  Text(
                    'Avoid:',
                    style: TextStyle(
                      fontSize: 18.spMin,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  ..._buildListItems(tip['avoid']), // Helper function for "Avoid"
                   SizedBox(height: 5.h),
                  Text(
                    'Alternative:',
                    style: TextStyle(
                      fontSize: 18.spMin,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  ..._buildListItems(tip['alternative']), // Helper function for "Alternative"
                ],
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  /// Helper function to create list items
  List<Widget> _buildListItems(List<dynamic>? items) {
    if (items == null || items.isEmpty) return [];
    return items.map((item) {
      return Padding(
        padding:  EdgeInsets.only(left: 8.0.w, top: 4.0.h),
        child: Text(
          '- $item',
          style:  TextStyle(fontSize: 15.spMin, color: Colors.black87),
        ),
      );
    }).toList();
  }


  /// Build a list of tips as widgets.
}
   List tips = [
     {
       "title": "Eat a Balanced Diet",
       "description":
       "Focus on whole foods that are rich in fiber, protein, healthy fats, and low glycemic carbohydrates to help manage blood sugar levels.",
       "include": [
         "Lean proteins (chicken, turkey, tofu, legumes)",
         "High-fiber vegetables (broccoli, spinach, kale)",
         "Whole grains (quinoa, brown rice)"
       ],
       "avoid": ["Processed carbs", "Sugary foods (white bread, pastries)"],
       "alternative": [
         "Replace white bread with whole grain or multigrain bread",
         "Use natural sweeteners like honey or fruits instead of sugary snacks"
       ],
     },
     {
       "title": "Control Portion Sizes",
       "description":
       "Eating smaller, frequent meals helps balance nutrients and prevents overeating.",
       "include": [
         "Balanced portions of protein, carbs, and fats",
         "Frequent small meals"
       ],
       "avoid": ["Overeating", "Skipping meals"],
       "alternative": [
         "Use smaller plates or portion control containers to manage meal sizes"
       ],
     },
     {
       "title": "Add Anti-Inflammatory Foods",
       "description":
       "Anti-inflammatory foods can help reduce PCOS symptoms and promote overall health.",
       "include": [
         "Fatty fish (salmon, mackerel)",
         "Turmeric, ginger, and green tea"
       ],
       "avoid": ["Processed meats", "Trans fats (fried food, margarine)"],
       "alternative": [
         "Swap fried foods with air-fried or baked options",
         "Use olive oil instead of margarine"
       ],
     },
     {
       "title": "Limit Dairy Intake",
       "description":
       "Reducing dairy intake can help manage hormonal imbalances related to PCOS.",
       "include": ["Plant-based milk (almond, oat, coconut)"],
       "avoid": ["High-fat dairy products (cheese, cream)"],
       "alternative": [
         "Replace cream with coconut cream",
         "Use plant-based cheese options"
       ],
     },
     {
       "title": "Avoid Processed Foods",
       "description": "Processed foods can aggravate PCOS symptoms.",
       "include": ["Fresh fruits and vegetables", "Minimally processed snacks"],
       "avoid": ["Pre-packaged meals", "Chips, instant noodles"],
       "alternative": [
         "Prepare homemade snacks like baked veggie chips or trail mixes"
       ],
     },
     {
       "title": "Stay Hydrated",
       "description": "Proper hydration is key to overall health.",
       "include": ["Water", "Herbal teas", "Infused water (lemon, mint)"],
       "avoid": ["Sugary beverages (sodas, energy drinks)"],
       "alternative": [
         "Replace sodas with sparkling water flavored with natural juice"
       ],
     },
     {
       "title": "Incorporate Omega-3 Fatty Acids",
       "description":
       "Omega-3s support heart health and may alleviate PCOS-related inflammation.",
       "include": ["Walnuts", "Chia seeds", "Fatty fish (salmon, sardines)"],
       "avoid": ["High-fat meats", "Omega-6-rich oils (corn oil, sunflower oil)"],
       "alternative": [
         "Use flaxseed or chia seeds as toppings for smoothies or salads"
       ],
     },
     {
       "title": "Choose Low-Glycemic Index (GI) Foods",
       "description":
       "Low-GI foods help stabilize blood sugar levels and manage PCOS symptoms.",
       "include": ["Sweet potatoes", "Legumes", "Fruits (berries, apples)"],
       "avoid": ["High-GI foods (white rice, instant oatmeal)"],
       "alternative": [
         "Replace white rice with quinoa or cauliflower rice",
         "Opt for steel-cut oats instead of instant oatmeal"
       ],
     },
     {
       "title": "Monitor Caffeine and Alcohol",
       "description":
       "Reducing caffeine and alcohol can improve sleep and hormonal balance.",
       "include": ["Herbal teas", "Decaf options"],
       "avoid": ["Excessive coffee", "Alcoholic beverages"],
       "alternative": [
         "Replace coffee with matcha or herbal infusions",
         "Opt for non-alcoholic mocktails"
       ],
     },
     {
       "title": "Include Healthy Fats",
       "description":
       "Healthy fats support hormone production and reduce inflammation.",
       "include": ["Avocados", "Nuts (almonds, walnuts)", "Olive oil"],
       "avoid": ["Saturated fats (butter, lard)"],
       "alternative": [
         "Replace butter with avocado spread",
         "Use olive oil in recipes instead of lard"
       ],
     },
   ];

