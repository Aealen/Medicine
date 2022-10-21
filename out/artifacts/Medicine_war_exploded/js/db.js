const mysql=require('mysql');
let MYSQLCONFIG={
    host:'10.10.11.254',
    user:'root',
    password:'Ff17301576208',
    port:'3306',
    database:'medicine'
}
const conn=mysql.createConnection(MYSQLCONFIG)

conn.connect()

function exec(sql){
    const promise = new Promise((resolve, reject) => {
        connect.query(sql, (err, result) => {
            if(err){
                reject(err)
                return
            }
            resolve(result)
        })
    })
// 返回带有数据库对象的promise对象
    return promise

}

module.exports={
    exec
}