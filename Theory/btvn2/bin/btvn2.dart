import 'dart:io';

void main()
{
  stdout.write('Nhap chuoi: ');
  String userstr = stdin.readLineSync()!;
  print('Chuoi vua nhap: $userstr');

  // Dem chuoi nguyen am - O E O A I
  int count(String s)
  {
    const vowels = 'oeaiOEAI';
    int count = 0;
    for (int i = 0; i < s.length; i++){
      if (vowels.contains(s[i])) count++;
    }
    return count;
  }

  bool doiXung(String s)
  {
    // cleanse the unecessary spaces, error type
    String cleansed = s.replaceAll(' ', '').toLowerCase();
    for (int i = 0 ; i < cleansed.length ~/ 2; i++)
    {
      if (cleansed[i] != cleansed[cleansed.length - 1 - i])
      {
        return false;
      }
    }
    return true;
  }
  // print('Chuoi ky tu nguyen am: $count'); False, 
  print('\nChuoi ky tu nguyen am: ${count(userstr)}'); // refer to: count(userstr)
  var countstring = userstr.length;
  print('\nSo tu: $countstring');
  print('\nChuoi co doi xung? ${doiXung(userstr) ? 'Co' : 'Khong'}');
  
  String reversed = userstr.split('').reversed.join('');
  print('\nDao chu:$reversed');

}