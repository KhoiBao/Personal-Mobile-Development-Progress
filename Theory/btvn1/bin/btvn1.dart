import 'dart:io';
import 'dart:math';

void main()
{
  // Create list containing numbers based on user
  List<int> list = [];
  stdout.write('Nhap so luong phan tu trong danh sach: ');
  int n = int.parse(stdin.readLineSync()!);

  /* Extra: Create a list containing random numbers with length of 10:

  final random = Random();
  List<int> numbers = List.generate(10, (_) => 5 + random.nextInt(96));
  print('List: $numbers');

  */ 
//===============================================================================

  // a. Xuat cac phan tu:numbers ngau nhien tu 5 -> 100
  for (int i = 0; i < n; i++){
    int value = Random().nextInt(96) + 5; // 96 - 1 = 95 ; 95 + 5 = 100, means take randomly from 5 to 100
    list.add(value); // after generate random numbers based on "n", add to list to display
  }
  print('\nPhan tu trong danh sach gom: $list');


//===============================================================================
  
  // b. Tinh trung binh cong cac so le trong danh sach
  int oddSum = 0;
  int countOdd = 0;

  // make a for loop to traverse through list of numbers in list
  for(int i = 0; i < list.length; i++)
  {
    if (list[i].isOdd)
    {
      oddSum += list[i];
      countOdd++;
    }
  }
  if (countOdd ==  0)
  {
    print('Danh sach khong co so le.');
  }
  else
  {
    var tbcSoLe = oddSum / countOdd;
    print('Trung binh cong cac so le trong mang la: $tbcSoLe');
  }
//===============================================================================

  // c. Check co phai danh sach doi xung hay khong
  bool flagDoiXung = true;
  // list.length ~/2 means half the length of the list, take the rounded variable
  for (int i = 0; i < list.length ~/2; i++)
  {
    if (list[i] != list[list.length - 1 - i]){
      flagDoiXung = false;
      break;
    }
  }
  print(flagDoiXung ? 'Danh sach doi xung.' : 'Danh sach khong doi xung.');

//===============================================================================

  //d. kiem tra tang dan
  // idea: traverse through list particles, checking whether the next particles is higher than the previous one or not
  bool flagCheck = true;
  for (int i = 0; i < list.length-1; i++){
    if (list[i]>list[i]+1)
    {
      flagCheck = false;
      break;
    }
  }
  print(flagCheck ? 'Danh sach co thu tu tang dan.' : 'Danh sach khong co thu tu tang dan.');
//===============================================================================

  // e. Tim phan tu lon nhat
  // idea: let a loop traverse through list particles, comparing every single particle to decide which one is larger
  int max = list[0];
  bool increasing = false;
  for (int i = 0; i < list.length; i++){
    if (list[i] > max)
    {
      max = list[i];
      increasing = true;
      // break; there should not be a break due to it will not go to the furthest of the list
    }
  }
  print('Co phan tu lon nhat:${increasing ? "Yes" : "No"}');
  print('Max value: $max');
//===============================================================================

  // f. Find phan tu chan lon nhat, neu khong thi bao loi
  int maxEven = list[0];
  bool increasingEven = false;
  for (int i = 0; i < list.length; i++){
    if (list[i] % 2 == 0 && list[i] > max)
    {
      max = list[i];
      increasingEven = true;
    }
  }
  if (maxEven % 2 == 0)
  {
  print('Co phan tu lon nhat la so chan:${increasingEven ? "Yes" : "No"}');
  print('Max value: $maxEven');
  }
  else
  {
    print('List khong co phan tu chan lon nhat!');
  }
//===============================================================================

  //g. Check gia tri nguoi dung nhap vao co trong danh sach hay khong tu do xoa gia tri do
  // idea: create a bool exist to dedicate whether it is exist, then traverse through the list, comparing list[i] = n (user input), if yes = pop, if not then say it.
  // Solved: create a vessel contain number user want to find, if list do not contains(x) do nothing, else perform list.removerWhere((e) => e == x) which mean go through every element in list that equal to X.
  // this method is O(n) time complexity.
  // 
  
  int x;
  do
  {
    stdout.write('Gia tri can tim: ');
    x = int.parse(stdin.readLineSync()!);
  }
  while (x == null);

  if (!list.contains(x)){
    print("Khong tim thay gia tri can tim!");
  }
  else{
    list.removeWhere((i) => i == x);
    print('Da xoa gia tri can tim!');
    print('Danh sach moi: $list');
  }
}



