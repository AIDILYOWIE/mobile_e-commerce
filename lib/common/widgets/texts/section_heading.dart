import 'package:flutter/material.dart';

class ECategorieHeader extends StatelessWidget {
  const ECategorieHeader({
    super.key,
    required this.title,
    this.buttonTitle = 'View All' ,
    this.textColor,
    this.showActionButton = true,
    this.onPresed


  });

  final String title, buttonTitle;
  final bool showActionButton;
  final Color? textColor;
  final void Function()? onPresed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor) , maxLines: 1, overflow: TextOverflow.ellipsis,),
        if (showActionButton) TextButton(onPressed: onPresed, child: Text(buttonTitle))
      ],
    );
  }
}

