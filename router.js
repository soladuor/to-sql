const express = require('express'); // 导入express模块
const router = express.Router() // 创建路由实例
const baseConfig = require('./database-config')    // 引入自定义配置文件
const mysql = require('mysql')  // 引入mysql模块
const db = mysql.createPool(baseConfig.dataBaseSet)    // 链接MySQL数据库

router.post('/sql', (req, res) => {
    const sqlStr = req.body.sql
    db.query(sqlStr, (err, results) => {
        // 失败
        if (err) return res.send({
            code: 400,
            msg: '失败原因：' + err.message
        })
        // 成功
        if (results.affectedRows === 1) {
            res.send({
                code: 200,
                msg: '添加/删除/更新操作成功',
                data: results
            })
        }
        res.send({
            code: 200,
            msg: '查询操作成功',
            data: results
        })
    })
})
// 导出路由对象
module.exports = router
