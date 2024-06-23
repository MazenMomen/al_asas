import 'package:al_asas/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LearnGridCard extends StatelessWidget {
  final String subjectName;
  final String bookName;
  final String sheikhName;

  const LearnGridCard({
    super.key,
    required this.subjectName,
    required this.bookName,
    required this.sheikhName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/watchLecture');
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(
          top: MediaQuery.of(context).size.height * 10 / 844,
          bottom: MediaQuery.of(context).size.height * 10 / 844,
          start: MediaQuery.of(context).size.width * 10 / 390,
          end: MediaQuery.of(context).size.width * 10 / 390,
        ),
        decoration: ShapeDecoration(
          color: const Color(0xFF2A3E34),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 15.04,
              offset: Offset(0, 0),
              spreadRadius: 7.27,
            )
          ],
        ),
        child: Padding(
          padding:
              EdgeInsets.all(MediaQuery.of(context).size.height * 20 / 844),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      subjectName,
                      style: AppStyles.regular57_68,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    bookName,
                    style: AppStyles.black16,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Text(
                    textAlign: TextAlign.center,
                    sheikhName,
                    style: AppStyles.black10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
