## 本项目实现的最终作用是基于JSP户籍管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 反馈投诉管理
 - 户籍管理
 - 管理员登陆
 - 迁入管理
 - 迁出管理
### 第2个角色为用户角色，实现了如下功能：
 - 反馈建议
 - 户籍信息查看
 - 用户登陆
 - 迁入查询
## 数据库设计如下：
# 数据库设计文档

**数据库名：** huji_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [login](#login) |  |
| [qianru](#qianru) |  |
| [salary](#salary) |  |
| [tousu](#tousu) |  |
| [yonghu](#yonghu) |  |

**表名：** <a id="login">login</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | username |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    N     |  N   |       | 密码  |

**表名：** <a id="qianru">qianru</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | username |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  3   | shiyong_time |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  4   | shijian |   varchar   | 255 |   0    |    N     |  N   |       | 时间  |
|  5   | qNo |   varchar   | 255 |   0    |    N     |  N   |       |   |

**表名：** <a id="salary">salary</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | username |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  3   | salary_all |   varchar   | 255 |   0    |    N     |  N   |       | 缴费总额  |
|  4   | salary_type |   varchar   | 255 |   0    |    N     |  N   |       | 缴费方式  |
|  5   | salary_per |   varchar   | 255 |   0    |    N     |  N   |       | 收费人员  |
|  6   | salary_time |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  7   | beizhu |   varchar   | 255 |   0    |    N     |  N   |       |   |

**表名：** <a id="tousu">tousu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | title |   varchar   | 255 |   0    |    N     |  N   |       | 标题  |
|  3   | content |   varchar   | 255 |   0    |    N     |  N   |       | 内容  |
|  4   | tou_time |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  5   | answer |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | da_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | username |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  8   | tel |   varchar   | 255 |   0    |    N     |  N   |       | 电话  |

**表名：** <a id="yonghu">yonghu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | username |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    N     |  N   |       | 密码  |
|  4   | tel |   varchar   | 255 |   0    |    N     |  N   |       | 电话  |
|  5   | l_name |   varchar   | 255 |   0    |    N     |  N   |       | 楼宇名称  |
|  6   | l_ceng |   varchar   | 255 |   0    |    N     |  N   |       | 楼层  |
|  7   | l_wu |   varchar   | 255 |   0    |    N     |  N   |       | 房屋号  |
|  8   | l_danyuan |   varchar   | 255 |   0    |    N     |  N   |       | 单元  |
|  9   | ru_time |   varchar   | 255 |   0    |    N     |  N   |       | 迁入日期  |
|  10   | l_fangxing |   varchar   | 255 |   0    |    N     |  N   |       | 房型  |
|  11   | beizhu |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  12   | shijian |   varchar   | 255 |   0    |    N     |  N   |       | 时间  |

**运行不出来可以微信 javape 我的公众号：源码码头**
