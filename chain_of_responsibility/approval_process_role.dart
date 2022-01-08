abstract class ApprovalProcessRole {
  static const LEADER_APPROVAL_LEVEL = 1;
  static const MANAGER_APPROVAL_LEVEL = 2;
  static const GENERAL_MANAGER_APPROVAL_LEVEL = 3;
  static const VICE_PRESIDENT_APPROVAL_LEVEL = 4;

  ApprovalProcessRole? _nestApprovalRole;
  int _approvalLevel;

  ApprovalProcessRole(this._approvalLevel);

  set nestApprovalRole(ApprovalProcessRole role) => _nestApprovalRole = role;

  void approvalRequest(int requiredApprovalLevel) {
    if (_approvalLevel <= requiredApprovalLevel) {
      approval();
      if (_nestApprovalRole != null) {
        _nestApprovalRole!.approvalRequest(requiredApprovalLevel);
      }
    }
  }

  void approval();
}
