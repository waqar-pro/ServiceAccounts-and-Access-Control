# Kubernetes ServiceAccounts and RBAC 

A hands-on  demonstrating Kubernetes ServiceAccounts,
Role-Based Access Control (RBAC), and the Least Privilege Principle.

## What This  Covers

- Creating custom ServiceAccounts for different applications
- Defining Roles with specific permissions
- Binding ServiceAccounts to Roles using RoleBindings
- Creating ClusterRoles for cross-namespace access
- Testing and auditing RBAC permissions

##  Structure

| ServiceAccount | Role | Access |
|----------------|------|--------|
| webapp-sa | webapp-role | pods, services, configmaps (read) |
| database-sa | database-role | secrets, PVC, pods (read/write) |
| monitoring-sa | monitoring-clusterrole | entire cluster (read) |

## Key Concepts

**ServiceAccount** — Identity for a pod inside Kubernetes

**Role** — Defines what actions are allowed on which resources

**RoleBinding** — Connects a ServiceAccount to a Role

**ClusterRole** — Like a Role but works across all namespaces

## Result

Webapp tried to access secrets — `403 Forbidden` blocked it.

Database tried to access services — `403 Forbidden` blocked it.

This is the Least Privilege Principle in action.

## Tech Stack

- Kubernetes
- kubectl
- RBAC
- nginx:1.21
- postgres:13
