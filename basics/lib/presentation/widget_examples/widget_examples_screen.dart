import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/components/custom_button.dart';
import 'package:basics/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:basics/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:basics/presentation/widget_examples/widgets/hello_world.dart';
import 'package:basics/presentation/widget_examples/widgets/image_profile_avatar.dart';
import 'package:basics/presentation/widget_examples/widgets/image_stack.dart';
import 'package:basics/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:basics/presentation/widget_examples/widgets/media_query_example.dart';
import 'package:basics/presentation/widget_examples/widgets/person.dart';
import 'package:basics/presentation/widget_examples/widgets/row_expanded_example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Flutter Basics")),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const RowExpandedExample(),
            const SizedBox(
              height: 20,
            ),
            const FirstColumnChild(),
            const SizedBox(
              height: 20,
            ),
            const HelloWorld(),
            const SizedBox(
              height: 20,
            ),
            const ImageStack(),
            const SizedBox(
              height: 20,
            ),
            const Person(
                pictureUrl:
                    'https://i.pinimg.com/originals/ee/3c/11/ee3c11fa6f332d45d057f59fec481e99.jpg',
                name: 'Vanessa',
                age: '29',
                country: 'US',
                job: 'CEO'),
            const SizedBox(
              height: 20,
            ),
            const ImageProfileAvatar(),
            const SizedBox(
              height: 20,
            ),
            const Person(
                pictureUrl:
                    'https://64.media.tumblr.com/3965e06d785121584792ddc16754fa96/e1c5f357a71bf5e1-59/s1280x1920/ef818f9e6709f452255405c77576d47b46fa3bd5.jpg',
                name: "Carmen",
                age: '13',
                country: "GR",
                job: "Psichologyst"),
            const SizedBox(
              height: 40,
            ),
            const MediaQueryExample(),
            const SizedBox(
              height: 40,
            ),
            const LayoutBuilderExample(),
            const SizedBox(
              height: 40,
            ),
            const ButtonExamples(),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
                onTap: () {
                  print("tapped from Screen widget");
                  Navigator.pushNamed(context, '/screenOne');
                },
                icon: Icons.home,
                iconColor: Colors.brown),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
                onTap: () {
                  print("tapped from Screen widget 2");
                },
                icon: Icons.heart_broken_outlined,
                iconColor: Colors.red.shade900),
            const SizedBox(
              height: 40,
            ),
            CustomButtonGesture(
              onTap: () {
                print("CustomeButtonGesture tapped");
                Navigator.pushNamed(context, '/screenTwo');
              },
              text: 'Gesture bottom',
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                debugPrint('Btn toggle theme'),
                Provider.of<ThemeService>(context, listen: false).toogleTheme()
              },
          child: const Icon(Icons.pentagon)),
    );
  }
}
