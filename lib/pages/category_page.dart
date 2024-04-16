import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/data.dart';
import 'dart:convert';
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    //_getCategory();
    return Scaffold(
      appBar: AppBar(title: Text('商品分类'),),
      body: Container(
        child: Row(
          children: <Widget>[
            LeftCategoryNav()
          ],
        ),
      ),
    );
  }


}

//左侧大类导航
class LeftCategoryNav extends StatefulWidget {
  @override
  _LeftCategoryNavState createState() => _LeftCategoryNavState();
}

class _LeftCategoryNavState extends State<LeftCategoryNav> {
  List list=[
    {
      "id": 885,
      "pid": 0,
      "name": "汽车用品",
      "is_show": "1",
      "image": "http://houniao-images.oss-cn-shenzhen.aliyuncs.com/houniao-images/wyc/Image/upload/5f6abb0640857.png",
      "update_time": "2022-03-22 18:27:47",
      "create_time": "2019-12-13 03:42:23",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154592,
        "goods_category_id": 885,
        "profit_rate": 2,
        "is_sale": 1,
        "sort": 1
      },
      "user_sale": "1",
      "sort": 1
    },
    {
      "id": 364,
      "pid": 0,
      "name": "个人护理",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/005.png",
      "update_time": "2022-03-22 18:27:28",
      "create_time": "2019-08-09 22:10:23",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154593,
        "goods_category_id": 364,
        "profit_rate": 2,
        "is_sale": 1,
        "sort": 2
      },
      "user_sale": "1",
      "sort": 2
    },
    {
      "id": 187,
      "pid": 0,
      "name": "营养保健",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/015.png",
      "update_time": "2022-03-22 18:28:18",
      "create_time": "2019-08-09 22:10:19",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154594,
        "goods_category_id": 187,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 3
      },
      "user_sale": "1",
      "sort": 3
    },
    {
      "id": 95,
      "pid": 0,
      "name": "美妆护肤",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/011.png",
      "update_time": "2022-03-22 18:27:11",
      "create_time": "2019-08-09 22:10:17",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154595,
        "goods_category_id": 95,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 4
      },
      "user_sale": "1",
      "sort": 4
    },
    {
      "id": 489,
      "pid": 0,
      "name": "家居日用",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/007.png",
      "update_time": "2022-03-22 18:27:39",
      "create_time": "2019-08-09 22:10:26",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154596,
        "goods_category_id": 489,
        "profit_rate": 2,
        "is_sale": 1,
        "sort": 5
      },
      "user_sale": "1",
      "sort": 5
    },
    {
      "id": 711,
      "pid": 0,
      "name": "宠物生活",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/001.png",
      "update_time": "2022-03-22 18:27:36",
      "create_time": "2019-08-09 22:10:32",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154597,
        "goods_category_id": 711,
        "profit_rate": 1,
        "is_sale": 1,
        "sort": 6
      },
      "user_sale": "1",
      "sort": 6
    },
    {
      "id": 475,
      "pid": 0,
      "name": "运动户外",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/006.png",
      "update_time": "2022-03-22 18:27:34",
      "create_time": "2019-08-09 22:10:26",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154598,
        "goods_category_id": 475,
        "profit_rate": 5,
        "is_sale": 1,
        "sort": 7
      },
      "user_sale": "1",
      "sort": 7
    },
    {
      "id": 124,
      "pid": 0,
      "name": "家用电器",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/009.png",
      "update_time": "2022-03-22 18:27:13",
      "create_time": "2019-08-09 22:10:18",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154599,
        "goods_category_id": 124,
        "profit_rate": 11,
        "is_sale": 1,
        "sort": 8
      },
      "user_sale": "1",
      "sort": 8
    },
    {
      "id": 596,
      "pid": 0,
      "name": "服饰内衣",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/003.png",
      "update_time": "2022-03-22 18:28:09",
      "create_time": "2019-08-09 22:10:29",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154600,
        "goods_category_id": 596,
        "profit_rate": 8,
        "is_sale": 1,
        "sort": 9
      },
      "user_sale": "1",
      "sort": 9
    },
    {
      "id": 414,
      "pid": 0,
      "name": "服饰箱包",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/004.png",
      "update_time": "2022-03-22 18:28:26",
      "create_time": "2019-08-09 22:10:25",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154601,
        "goods_category_id": 414,
        "profit_rate": 5,
        "is_sale": 1,
        "sort": 10
      },
      "user_sale": "1",
      "sort": 10
    },
    {
      "id": 745,
      "pid": 0,
      "name": "家装建材",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/010.png",
      "update_time": "2022-03-22 18:27:59",
      "create_time": "2019-08-09 22:10:33",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154602,
        "goods_category_id": 745,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 11
      },
      "user_sale": "1",
      "sort": 11
    },
    {
      "id": 288,
      "pid": 0,
      "name": "休闲食品",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/014.png",
      "update_time": "2022-03-22 18:27:21",
      "create_time": "2019-08-09 22:10:21",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154603,
        "goods_category_id": 288,
        "profit_rate": 45,
        "is_sale": 1,
        "sort": 12
      },
      "user_sale": "1",
      "sort": 12
    },
    {
      "id": 774,
      "pid": 0,
      "name": "数码电子",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/013.png",
      "update_time": "2022-03-22 18:28:05",
      "create_time": "2019-08-09 22:10:33",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154604,
        "goods_category_id": 774,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 13
      },
      "user_sale": "1",
      "sort": 13
    },
    {
      "id": 1,
      "pid": 0,
      "name": "母婴用品",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/012.png",
      "update_time": "2022-03-22 18:28:34",
      "create_time": "2019-08-09 22:10:15",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154605,
        "goods_category_id": 1,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 14
      },
      "user_sale": "1",
      "sort": 14
    },
    {
      "id": 818,
      "pid": 0,
      "name": "家庭清洁",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/008.png",
      "update_time": "2024-04-16 18:52:27",
      "create_time": "2019-08-09 22:10:34",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154606,
        "goods_category_id": 818,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 15
      },
      "user_sale": "1",
      "sort": 15
    },
    {
      "id": 1374,
      "pid": 0,
      "name": "医疗保健",
      "is_show": "1",
      "image": "http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/62563687278dc.png",
      "update_time": "2022-03-22 18:27:32",
      "create_time": "2022-02-07 12:00:35",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154607,
        "goods_category_id": 1374,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 16
      },
      "user_sale": "1",
      "sort": 16
    },
    {
      "id": 464,
      "pid": 0,
      "name": "电脑办公",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/002.png",
      "update_time": "2022-03-22 18:27:33",
      "create_time": "2019-08-09 22:10:26",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154608,
        "goods_category_id": 464,
        "profit_rate": 10,
        "is_sale": 1,
        "sort": 17
      },
      "user_sale": "1",
      "sort": 17
    },
    {
      "id": 856,
      "pid": 0,
      "name": "珠宝首饰",
      "is_show": "1",
      "image": "http://images.houniao.hk/ycangH5/static/classify/016.png",
      "update_time": "2024-04-16 18:52:27",
      "create_time": "2019-08-09 22:10:35",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154609,
        "goods_category_id": 856,
        "profit_rate": 12,
        "is_sale": 1,
        "sort": 18
      },
      "user_sale": "1",
      "sort": 18
    },
    {
      "id": 1333,
      "pid": 0,
      "name": "生活服务",
      "is_show": "1",
      "image": "https://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/62411578d6a43.jpg",
      "update_time": "2022-03-22 18:27:32",
      "create_time": "2021-07-28 12:10:15",
      "data_flag": 1,
      "GetShopCateDetail": {
        "id": 154610,
        "goods_category_id": 1333,
        "profit_rate": 1,
        "is_sale": 1,
        "sort": 19
      },
      "user_sale": "1",
      "sort": 19
    }
  ];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          border: Border(
            right: BorderSide(width:1.0,color: Colors.black12),//有边框
          )
      ),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (contex,index){
          return _leftInkWell(index);
        },
      ),
    );
  }

  Widget _leftInkWell(index){
    return InkWell(
      onTap: (){},
      child: Container(
        height: 100,
        padding: EdgeInsets.only(left:10.0,top:10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(width: 1.0,color: Colors.black12)
            )
        ),
        child: Center(
          child: Text(
            list[index]['name'],
            style: TextStyle(fontSize: 28),//设置字体大小，为了兼容使用setSp
          ),
        ),
      ),
    );
  }
}