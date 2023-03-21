import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String pictureUrl;
  final String name;
  final String age;
  final String country;
  final String job;

  const Person(
      {Key? key,
      required this.pictureUrl,
      required this.name,
      required this.age,
      required this.country,
      required this.job})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(18)),
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(pictureUrl))),
              ),
              Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white54),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _createPersonInfoRow(context: context, key: 'age', value: age),
                const SizedBox(
                  height: 8,
                ),
                _createPersonInfoRow(context: context, key: 'job', value: job),
                const SizedBox(
                  height: 8,
                ),
                _createPersonInfoRow(
                    context: context, key: 'country', value: country),
              ],
            ),
          )
        ]));
  }

  Row _createPersonInfoRow(
      {required String key,
      required String value,
      required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Text(key, style: Theme.of(context).textTheme.bodyLarge),
        ),
        const Spacer(),
        Expanded(
          child: Text(value, style: Theme.of(context).textTheme.titleSmall),
        )
      ],
    );
  }
}
