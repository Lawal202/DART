import 'dart:io';

void main(){
 String choice;

   do {
      print("***WELCOME TO MATTHEW'S SIDE CORNER***");
  print("MENU \n 1. Bread and Egg. \n 2. Noodles and Egg. \n 3. Tea and Bread. ");
   int answer = int.parse(stdin.readLineSync()!);

   switch(answer){
    case 1:
      bread();
      break;
    
    case 2:
    noodles();
    break;

    case 3:
    tea();
    break;
   }

   print("do wish to  continue! y or n ?");
   choice = stdin.readLineSync()!;


     
   } while (choice == "y");


}

void bread(){
  print("***BREAD AND EGG MASHAI RECIPE***");
  print("1. Break the egg into a bowl.");
  print("2. Add a pinch of salt, pepper and seasoning.");
  print("3. Slice some onions and add into the bowl.");
  print("4. Open a tin of sardine into the bowl and whisk everything together.");
  print("5. Heat up little oil in a pan");
  print("6. Add in the contents of the bowl.");
  print("7. Allow to fry on both sides are not runny for 2 minutes each.");
  print("8. Slice open the bread and place the egg into the bread.");
  print("9. Place the bread in the pan on low heat. Fry on both sides for 30 seconds");
  print("YOUR BREAD AND EGG MASHAI IS READY");
}

void noodles(){
  print("***Noodles AND Egg RECIPE***");
  print("1. Set a pot and add half cup of water into it and place on heat to boil.");
  print("2. Prepare the noodles along with pepper and seasoning.");
  print("3. Slice some onions and add into the bowl.");
  print("4. Open a tin of sardine into the bowl and whisk everything together.");
  print("5. Heat up little oil in a pan");
  print("6. Add in the contents of the bowl.");
  print("7. Allow to fry on both sides are not runny for 2 minutes each.");
  print("8. Slice open the bread and place the egg into the bread.");
  print("9. Place the bread in the pan on low heat. Fry on both sides for 30 seconds");
  print("YOUR BREAD AND EGG MASHAI IS READY");
}

void tea(){
  print("***Tea And Bread Recipe***");
  print("1. Buy your Favorite Bread.");
  print("2. Add into a kettle or heating jug a cup of water and place on heat.");
  print("3. prepare your choice of beverage.");
  print("4. Open a tin of sardine into the bowl and whisk everything together.");
  print("YOUR Bread And Tea is READY");
}