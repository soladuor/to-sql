// 导入express模块并创建实例
const express = require('express')
const app = express();
// 解决跨域问题
const cors = require('cors');
app.use(cors());
// 解析post请求体
app.use(express.json())
app.use(express.urlencoded({extended: false}))
// 导入并挂载路由模块
const apiRouter = require('./router')
app.use('/api', apiRouter)

// 导入自定义配置
const baseConfig = require('./database-config');
// 监听端口
app.listen(baseConfig.port, () => {
    console.log("项目已启动")
    console.log('按 Ctrl+C 结束进程')
})
