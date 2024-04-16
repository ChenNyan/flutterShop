import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:card_swiper/card_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {


  @override
  bool get wantKeepAlive =>true;
  @override
  void initState() {
    super.initState();
    print('我打印了哈哈哈哈哈');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('百姓生活+'),),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SwiperDiy(),
              AdBanner(),
              FloorTitle(picture_address: 'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/64a4d4bab89e4.jpg',),
              FloorContent(floorGoodsList: [
                'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/64a5117de0532.png',
                'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/64a5117de0532.png',
                'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/64a5117de0532.png',
                'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/64a5117de0532.png',
                'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/64a5117de0532.png',
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class SwiperDiy extends StatelessWidget {

  final swiperData = [
    'https://images.houniao.hk/houniao-images/shop/supplier/upload/20230715/64b20626595d0.png',
    'https://images.houniao.hk/houniao-images/shop/supplier/upload/20230719/64b784d691978.jpg',
    'https://images.houniao.hk/upload/goods/20200807152685175_big.jpg',
    'https://images.houniao.hk/houniao-images/shop/supplier/upload/20230721/64b9fb8783f5b.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 333.0,
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.network("${swiperData[index]}",fit: BoxFit.fill,);
        },
        itemCount: swiperData.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}


class AdBanner extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AdBannerItem(img: 'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/63849d29ceef6.png',text: '哈哈',),
          AdBannerItem(img: 'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/63849d29ceef6.png',text: '哈哈',),
          AdBannerItem(img: 'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/63849d29ceef6.png',text: '哈哈',),
          AdBannerItem(img: 'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/63849d29ceef6.png',text: '哈哈',),
          AdBannerItem(img: 'http://houniao-images.oss-cn-shenzhen.aliyuncs.com/wyc/Assembly/upload/63849d29ceef6.png',text: '哈哈',),
        ],
      ),
    );
  }
}

class AdBannerItem extends StatelessWidget {
  final img;
  final text;

  const AdBannerItem({super.key,required this.img, required this.text});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 90,
      height: 90,
      child: Column(
        children: [
          Image.network(img,width: 60,height: 60,),
          Center(
            child: Text(text),
          )
        ],
      ),
    );
  }
}

class FloorTitle extends StatelessWidget {
  final String picture_address;
  const FloorTitle({super.key,required this.picture_address});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Image.network(picture_address),
    );
  }
}

class FloorContent extends StatelessWidget {
  final List floorGoodsList;

  const FloorContent({super.key, required this.floorGoodsList});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Get screen size
    final screenWidth = size.width; // Extract screen width
    return Container(
      child: Column(
        children: <Widget>[
          _firstRow(screenWidth),
          _otherGoods(screenWidth)
        ],
      ),
    );
  }

  Widget _firstRow(screenWidth){
    return Row(
      children: <Widget>[
        _goodsItem(floorGoodsList[0],screenWidth/2, 300),
        Column(
          children: <Widget>[
            _goodsItem(floorGoodsList[1],screenWidth/2, 150),
            _goodsItem(floorGoodsList[2],screenWidth/2, 150),
          ],
        )
      ],
    );
  }

  Widget _otherGoods(screenWidth){
    return Row(
      children: <Widget>[
        _goodsItem(floorGoodsList[3],screenWidth/2, 150),
        _goodsItem(floorGoodsList[4],screenWidth/2, 150),
      ],
    );
  }

  Widget _goodsItem(goods,screenWidth,screenHeight){
    final width = screenWidth;
    final height = screenHeight.toDouble();
    return Container(
      width:width,
      height:height,
      child: InkWell(
        onTap:(){print('点击了楼层商品');},
        child: Image.network(goods,width: width,height: height,fit: BoxFit.fill),
      ),
    );
  }

}