# to-SQL

便捷式前端SQL，只需要将SQL语句写到请求体中的sql属性上，即可在前端运行SQL代码，所以本项目相当于一个SQL中转站，用于前端请求数据库，适用于前端测试数据库（不建议用于生产的项目中）

当前只测试过select update insert delete 语句（懒得测试了，有精力测试的帮着试试吧），且每次请求的请求体中只能有一句SQL

注：在项目根目录下按 Shift + 鼠标右键 可在当前路径打开 PowerShell 可在此运行下列命令，也可以打开 cmd 用 cd 命令进入到此目录再运行下列命令

声明：测试数据由Navicat数据生成工具生成，与现实无关

## 环境

安装nodejs即可

官网地址 https://nodejs.org/ 建议下载 LTS 版本

## 项目结构

```
TO-SQL
│  .gitignore               // git提交时的忽略配置文件
│  app.js                   // 主文件（入口文件）
│  database-config.js       // 自定义配置文件（在这里修改数据库的配置）
│  LICENSE                  // 开源协议
│  package-lock.json
│  package.json
│  README.md                // 自述文件
│  router.js                // 路由文件（接口写到这里了）
│  test01.sql               // 测试示例中使用的test01数据库
│
└─html-example              // 示例（内部有两个例子）
        index-jquery-ajax.html      // 使用了jQuery, 请求用的是jQuery封装的ajax
        index-vue-axios.html        // 使用了vue, 请求用的是axios
```

## 安装模块

```
npm install
```

## 配置

```js
// 在 database-config.js 文件中配置自己的服务器和数据库
// 以下为配置示例
const baseConfig = {
    port: 3006,             // 服务器端口
    hostname: '127.0.0.1',  // 本地服务器地址（127.0.0.1代表本机的地址）
    dataBaseSet: {
        host: '127.0.0.1',  // 数据库地址
        user: 'testUser',   // 数据库用户名（默认为root）
        password: '123456', // 数据库密码
        database: 'test01'  // 数据库名
    }
}
```

数据库的例子可以用项目中提供的test01数据库

## 运行

```
node ./app.js
```

建议使用 VSCode 或者 WebStorm 运行该项目
