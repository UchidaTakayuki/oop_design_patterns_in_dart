import 'directory_entry.dart';
import 'entry.dart';
import 'file_entry.dart';

class CompositePatternOperator {
  static void operation() {
    // ディレクトリの作成
    DirectoryEntry homeDir = DirectoryEntry('home', null);
    DirectoryEntry workDir = DirectoryEntry('work', homeDir);
    DirectoryEntry dataDir = DirectoryEntry('data', workDir);
    DirectoryEntry imgDir = DirectoryEntry('img', dataDir);
    DirectoryEntry dartDir = DirectoryEntry('dart', workDir);

    // ファイルの作成
    FileEntry xmlFile = FileEntry('xml.xml', dataDir);
    FileEntry jsonFile = FileEntry('json.json', dataDir);
    FileEntry dartFile = FileEntry('dart.dart', dartDir);

    // ディレクトリ構造の構築
    homeDir.addChildren(workDir);
    workDir.addChildren(dataDir);
    workDir.addChildren(imgDir);
    workDir.addChildren(dartDir);
    dataDir.addChildren(xmlFile);
    dataDir.addChildren(jsonFile);
    dartDir.addChildren(dartFile);

    // ディレクトリ構造の表示
    print(homeDir.tree());
  }
}
