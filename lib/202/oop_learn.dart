

import 'package:url_launcher/url_launcher.dart';

import 'custom_exception.dart';

abstract class IFileDownload{
  bool?  downloadItem(FileItem? fileItem);
  void toShare(Uri path)async{
    if (!await launchUrl(path));
  }
}

class FileDownload extends IFileDownload{
  @override 
  bool? downloadItem(FileItem? fileItem){
    if(fileItem ==null) throw FieDownloadException();
    print('a');
  }
   
  @override
  void toShare(Uri path) {
    // TODO: implement toShare
  }
}

// extend in amacı üst sınıfın özelliklerini kullanıp kendi özelliklerini de katıcak
class SmsDownload extends IFileDownload{
  @override 
  bool? downloadItem(FileItem? fileItem){
    if(fileItem ==null) throw FieDownloadException();
    print('a');
  }
   
  @override
  void toShare(Uri path)async {
     if (!await launchUrl(path ));
  }
}


class FileItem{
  final String name;
  final String file;

  FileItem(this.name, this.file);
}


mixin ShareMixin on IFileDownload{
  void  toShowFile();
}