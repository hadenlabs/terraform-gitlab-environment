<!-- Space: TerraformModuleTemplate -->
<!-- Parent: Project -->
<!-- Title: Commands -->

## Commands

### Terragrunt

| Field  |        Description        |
| ------ | :-----------------------: |
| REGION |       region of aws       |
| STAGE  | stage or name environment |

```bash
task terragrunt:init REGION=us-east-1 STAGE=core
```

```bash
task terragrunt:apply REGION=us-east-1 STAGE=core
```

```bash
task terragrunt:plan REGION=us-east-1 STAGE=core
```

```bash
task terragrunt:destroy REGION=us-east-1 STAGE=core
```

#### Import

| Field   |           Description           |
| ------- | :-----------------------------: |
| REGION  |          region of aws          |
| STAGE   |    stage or name environment    |
| COMMAND | command for execute with import |

```bash
task terragrunt:import REGION=us-east-1 STAGE=core COMMAND=module.repository_learn_go.github_repository.this learn-go
```

**example**

```bash
task terragrunt:import REGION=us-east-1 STAGE=core COMMAND=module.repository_learn_go.github_repository.this learn-go
```

#### Module

| Field  |        Description        |
| ------ | :-----------------------: |
| REGION |       region of aws       |
| STAGE  | stage or name environment |
| MODULE |  module name to destroy   |

```bash
task terragrunt:module:destroy REGION=us-east-1 STAGE=core MODULE=repository_eslint_config
```

#### State

| Field   |          Description           |
| ------- | :----------------------------: |
| REGION  |         region of aws          |
| STAGE   |   stage or name environment    |
| COMMAND | command for execute with state |

```bash
task terragrunt:state REGION=us-east-1 STAGE=core COMMAND=list
```
