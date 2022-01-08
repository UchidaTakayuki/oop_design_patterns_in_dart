import 'approval_process_role.dart';

class GeneralManager extends ApprovalProcessRole {
  GeneralManager() : super(ApprovalProcessRole.GENERAL_MANAGER_APPROVAL_LEVEL);

  void approval() {
    print('事業部長が承認しました。');
  }
}
