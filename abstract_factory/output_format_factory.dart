import 'abstract_bold.dart';
import 'abstract_link.dart';

abstract class OutputFormatFactory {
  AbstractBold createBold();
  AbstractLink createLink();
}
