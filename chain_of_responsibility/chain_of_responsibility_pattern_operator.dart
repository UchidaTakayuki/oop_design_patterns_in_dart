import 'approval_process_role.dart';
import 'leader.dart';
import 'manager.dart';
import 'general_manager.dart';
import 'vice_president.dart';

class ChainOfResponsibilityPatternOperator {
  static void operation() {
    ApprovalProcessRole leader = Leader();
    ApprovalProcessRole manager = Manager();
    ApprovalProcessRole generalManager = GeneralManager();
    ApprovalProcessRole vicePresident = VicePresident();
    leader.nestApprovalRole = manager;
    manager.nestApprovalRole = generalManager;
    generalManager.nestApprovalRole = vicePresident;

    // リーダーまで承認が必要な場合
    leader.approvalRequest(ApprovalProcessRole.LEADER_APPROVAL_LEVEL);

    // マネージャーまで承認が必要な場合
    leader.approvalRequest(ApprovalProcessRole.MANAGER_APPROVAL_LEVEL);

    // 事業部長まで承認が必要な場合
    leader.approvalRequest(ApprovalProcessRole.GENERAL_MANAGER_APPROVAL_LEVEL);

    // 統括本部長まで承認が必要な場合
    leader.approvalRequest(ApprovalProcessRole.VICE_PRESIDENT_APPROVAL_LEVEL);
  }
}
