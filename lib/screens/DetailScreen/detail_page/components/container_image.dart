import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 7,
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/1.png'),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
