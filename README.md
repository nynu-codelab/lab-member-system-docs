# 实验室成员管理系统（新人入门项目）

> 实验室新人第一个完整后端项目  
> 当前版本：V1.0

## 项目简介

本项目用于帮助实验室新成员从 0 开始完成一个完整的小型软件项目，覆盖：

需求分析 → 数据库设计 → API 设计 → 后端开发 → 参数校验 → 异常处理 → 接口测试 → 自动化测试 → Git 提交 → 项目验收。

V1.0 只实现实验室成员的增删改查，不引入登录、权限、Redis、MQ、微服务等复杂功能。

## 文档

- [需求文档](docs/01-需求文档.md)
- [数据库设计](docs/02-数据库设计.md)
- [API 接口文档](docs/03-接口文档.md)
- [测试用例](docs/05-测试用例.md)

## 推荐开发流程

1. 阅读需求文档
2. 理解数据库设计
3. 理解 API 约定
4. 初始化 Spring Boot 项目
5. 完成数据库初始化
6. 完成 CRUD
7. 完成参数校验和异常处理
8. 完成 Swagger/OpenAPI
9. 完成自动化测试
10. 完善 README
11. 提交 Git
12. 按测试用例自测
13. 提交验收

## 技术栈

- Java 17+
- Spring Boot 3.x
- Maven
- MySQL 8.x
- MyBatis-Plus
- Lombok
- Spring Validation
- SpringDoc OpenAPI / Swagger

允许使用 AI Coding 工具辅助开发，但提交者必须能够解释自己的代码、数据库设计、接口设计和测试。

## 基础验收

```bash
mvn clean test
```

项目必须能够正常构建、启动并完成完整 CRUD。
