import 'package:flutter/material.dart';

ButtonStyle bs_flatFill(BuildContext context)
{
  return ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Theme.of(context).primaryColor),
          )
      )
  );
}

ButtonStyle bs_checkBox(BuildContext context, bool active)
{
  return ButtonStyle(
      foregroundColor: MaterialStateProperty.all( active ? Colors.white: Theme.of(context).primaryColor),
      backgroundColor: MaterialStateProperty.all(active ? Theme.of(context).primaryColor : Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: Theme.of(context).primaryColor),
          )
      )
  );
}
//
// ButtonStyle bs_checkBoxDisActive(BuildContext context)
// {
//   return ButtonStyle(
//       foregroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
//       backgroundColor: MaterialStateProperty.all(Colors.white),
//       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(25.0),
//             side: BorderSide(color: Theme.of(context).primaryColor),
//           )
//       )
//   );
// }

