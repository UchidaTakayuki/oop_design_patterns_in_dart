import 'approval_process_role.dart';

class VicePresident extends ApprovalProcessRole {
  VicePresident() : super(ApprovalProcessRole.VICE_PRESIDENT_APPROVAL_LEVEL);

  void approval() {
    print('統括本部長承認しました。');
  }
}
