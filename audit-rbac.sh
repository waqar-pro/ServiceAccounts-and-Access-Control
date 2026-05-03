#!/bin/bash
echo "RBAC Audit Report"
echo "=================="
echo "Date: $(date)"
echo ""

echo "ServiceAccounts:"
kubectl get serviceaccounts

echo ""
echo "Roles:"
kubectl get roles

echo ""
echo "RoleBindings:"
kubectl get rolebindings

echo ""
echo "ClusterRoles:"
kubectl get clusterroles | grep -v system

echo ""
echo "ClusterRoleBindings:"
kubectl get clusterrolebindings | grep -v system

