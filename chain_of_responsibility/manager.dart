import 'approval_process_role.dart';

class Manager extends ApprovalProcessRole {
  Manager() : super(ApprovalProcessRole.MANAGER_APPROVAL_LEVEL);

  void approval() {
    print('マネージャーが承認しました。');
  }
}
