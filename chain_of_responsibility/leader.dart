import 'approval_process_role.dart';

class Leader extends ApprovalProcessRole {
  Leader() : super(ApprovalProcessRole.LEADER_APPROVAL_LEVEL);

  void approval() {
    print('リーダーが承認しました。');
  }
}
