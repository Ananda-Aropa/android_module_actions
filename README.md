# KernelSU Module action

## Usage

The action will build a flashable KernelSU zip package from `module` folder.

### Inputs

| Name | Required | Default | Description |
| ---- | -------- | ------- | ----------- |
| id | ✅ | - | Module ID |
| name | ✅ | - | Module name |
| version | ✅ | - | Module version |
| version_code | ❌ | yyyymmdd date | Module version code (positive integer) |
| author | ✅ | - | Module author |
| description | ❌ | - | Module description |
| update_json | ❌ | - | URL to update.json file |

### Outputs

| Value | Description |
| ---- | ----------- |
| `<module id>.zip` | Flashable KernelSU zip package |
