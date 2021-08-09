Dropdown Button
--

code
--

```dart

List<String> dropdownList = ['1', '2', '3'];
String selectedDropdown = '1';
  
  ..
  ..
  
DropdownButton(
    value: selectedDropdown,
    items: dropdownList.map((String item) {
      return DropdownMenuItem<String>(
        child: Text('$item'),
        value: item,
      );
    }).toList(),
    onChanged: (dynamic value) {
      setState(() {
        selectedDropdown = value;
      });
    },
  ),
```

박스밀림 현상 해결
--
![KakaoTalk_Image_2021-08-10-02-01-43](https://user-images.githubusercontent.com/74492426/128745264-22078be7-7344-41d1-9a84-d38b570cf41f.gif)

 선택한 인덱스를 젤 위로 올린다.

```dart
dropdownList.remove(value);
dropdownList.insert(0, value);
```
                  
