# Upload photo(via gallery)

```
ImagePicker _picker = ImagePicker(); // 카메라/갤러리에서 사진 가져올 때 사용함 (image_picker)
XFile? file;

takeImage(mContext) {
    return showDialog(
        context: mContext,
        builder: (context) {
          return SimpleDialog( // Dialog 창을 띄우는 함수를 return
            title: Text('upload photos'),
            children: <Widget>[ // 한 줄마다 보여줄 Dialog option위젯들
              SimpleDialogOption( 
                child: Text('갤러리에서 사진 가져오기'),
                onPressed: pickImageFromGallery,
              ),
              SimpleDialogOption(
                child: Text('취소'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }
  
    pickImageFromGallery() async { // 사용자가 직접 사진을 고르기 전까지 다른 코드가 실행되면 안되므로 async 방식으로 진행한다
    Navigator.pop(context);
    final pickedFile = await _picker.pickImage( // pickedFile 변수는 갤러리를 통해 가져온 이미지 정보가 담기는 변수
      source: ImageSource.gallery, // 갤러리를 통해서 이미지를 가져온다
      maxWidth: 600,
      maxHeight: 700,
    );
    setState(() {
      file = pickedFile; //file 변수는 이미지를 나타낼 위젯에 사용되는 변수
    });
  }

```

하지만 이대로 file이란 변수를 Image 형태의 위젯으로 사용할 수 없다.   
file 변수는 변수형이 XFile 이기 때문이다.   
따라서 ```Image.file(File(file!.path))``` 과 같은 변환을 거쳐서 사용할 수 있다.
