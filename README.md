# 实验室成员管理系统（新人入门项目）

> 实验室新人第一个完整前后端项目  
> 当前版本：V1.1

## 项目简介

本项目用于帮助实验室新成员从 0 开始完成一个完整的小型前后端项目，覆盖：

需求分析 → 数据库设计 → API 设计 → 后端开发 → 前端开发 → 前后端联调 → 参数校验 → 异常处理 → 接口测试 → 自动化测试 → Git 提交 → 项目验收。

V1.1 实现实验室成员的增删改查（后端 RESTful API + 前端管理页面），不引入登录、权限、Redis、MQ、微服务等复杂功能。

## 协作要求与提交流程（新人必读）

**动手前**：先读 [docs 仓库](https://github.com/nynu-codelab/docs) 的 `software/` 规范（Git 协作、GitHub 协作、工程规范），再读本文档目录下的题目文档。

**做题方式**：

1. Fork 本仓库到自己的 GitHub 账号
2. 在自己的 fork 中开发，分支名使用 `feature/xxx`（如 `feature/member-crud`）
3. 提交信息遵循规范：`feat: xxx`、`fix: xxx` 等前缀
4. 不直接推 main，只向自己的 feature 分支提交
5. 允许使用 AI 辅助开发，但必须能解释自己的代码、数据库设计与接口设计

**完成后（成果 PR）**：

1. 向本仓库（`nynu-codelab/lab-member-system-docs`）发起 Pull Request
2. 标题格式：`[姓名] lab-member-system 提交`
3. PR 描述按仓库 PR 模板的「成果提交」部分填写：完成情况、自测结果、AI 辅助说明
4. 管理员会在 PR 中评审并按验收标准打分；**成果 PR 只评审、不合并**
5. 验收通过后 PR 关闭，结果记入实验室记录

## 文档

- [需求文档](docs/01-需求文档.md)
- [数据库设计](docs/02-数据库设计.md)
- [API 接口文档](docs/03-接口文档.md)
- [测试用例](docs/05-测试用例.md)

> 验收标准由实验室内部维护（`04-验收标准`），不随本仓库发布。评审时按组长发布的内部标准执行，仓库内只保留下面的「基础验收」作为最低门槛。

## 仓库协作约定

- 本仓库是新人题目的**发布与成果提交入口**，不是通用项目仓库。
- 维护类改动（文档修订、流程调整）遵循组织统一规范：分支 + Pull Request + `codelab-admin` 批准。
- 新人成果 PR **只评审、不合并**，这是本仓库唯一的例外，不要模仿到其他项目仓库。
- 提交前先本地自查：Markdown 格式与 PR 标题会由 CI 自动检查。

## 推荐开发流程

1. 阅读需求文档
2. 理解数据库设计
3. 理解 API 约定
4. 初始化 Spring Boot 项目
5. 完成数据库初始化
6. 完成后端 CRUD
7. 完成后端参数校验和异常处理
8. 完成 Swagger/OpenAPI
9. 完成后端自动化测试
10. 初始化前端项目（Vue 3 + Vite + TypeScript）
11. 实现成员列表页与新增/编辑/删除功能
12. 前后端联调
13. 完善 README
14. 提交 Git
15. 按测试用例自测
16. 提交验收

## 技术栈

后端：

- Java 17+
- Spring Boot 3.x
- Maven
- MySQL 8.x
- MyBatis-Plus
- Lombok
- Spring Validation
- SpringDoc OpenAPI / Swagger

前端：

- Vue 3 + Vite + TypeScript
- Element Plus（可选）

允许使用 AI Coding 工具辅助开发，但提交者必须能够解释自己的代码、数据库设计、接口设计和测试。

## 基础验收

后端：

```bash
mvn clean test
```

前端：

```bash
cd frontend && npm install && npm run build
```

项目必须能够正常构建、启动，并通过前端页面完成完整 CRUD。
