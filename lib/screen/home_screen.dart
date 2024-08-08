import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Column(
            children: [
              _Top(),
              _Bottom(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              'U&I',
              style: textTheme.displayLarge,
            ),
            Text(
              "우리 처음 만날",
              style: textTheme.bodyLarge,
            ),
            Text(
              '2024.03.04',
              style: textTheme.bodyMedium,
            ),
            IconButton(
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true, // dialog 바깥을 터치하면 닫힘
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.white,
                        height: 300,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          dateOrder: DatePickerDateOrder.ymd,
                          onDateTimeChanged: (DateTime date) {
                            print(date);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              iconSize: 60,
              color: Colors.red,
              icon: const Icon(
                Icons.favorite,
              ),
            ),
            Text(
              'D+1',
              style: textTheme.displayMedium,
            )
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset('asset/img/middle_image.png'),
      ),
    );
  }
}
