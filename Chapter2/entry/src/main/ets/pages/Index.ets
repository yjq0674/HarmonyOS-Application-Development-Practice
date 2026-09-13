@Entry
@Component
struct Index {
  build() {
    Column(){
      //1.头部
      //(一个 属性方法写一行，相近属性可以写一行)
      Stack({alignContent:Alignment.End}){  //栈布局（9种）
        Text("猫眼电影")
          .width("100%").height("100%").textAlign(TextAlign.Center)
          .fontColor(Color.White).fontSize(18)

        Image($r("app.media.menu"))
          .width(24).height(24).margin(10)//margin外边距
      }
      .width("100%").height(50)//虚拟像素vp
      .backgroundColor('#e54847')//背景颜色至少 会三种写法：1.'#e5 23 44',若有八位ff代表透明度

      //2.中间内容区
      Column() {
        // 导航区域
        Row() {
          // 导航区
          Row() {
            Row() {
              Text('北京').fontColor('#666')
              Text('')
                .width(0).height(0)
                .border({
                  width: 5,
                  color: {
                    top: '#b0b0b0',
                    left: Color.Transparent,
                    right: Color.Transparent,
                    bottom: Color.Transparent
                  }
                })
                .margin({top: 6, left: 4})
            }.offset({x: 15}).width(60)
            Row() {
              Stack() {
                Text('热映')
                  .fontSize(17).fontWeight(FontWeight.Bold)
                Text('')
                  .width(24).border({width: {bottom: 3}, color: '#e54847'}).offset({y: 18})
              }
              Text('影院')
              Text('待映')
              Text('经典电影')
            }.justifyContent(FlexAlign.SpaceEvenly).layoutWeight(1)
            Row() {
              Image($r("app.media.search_red")).width(18).height(18)
            }.justifyContent(FlexAlign.Center).width(49)
          }.width('100%').height(44).border({width: {bottom: 1}, color: '#e6e6e6'})
        }
        .width('100%').height(44).border({width: {bottom: 1}, color: '#e6e6e6'})
        // 好评和列表区域
        Scroll() {
          // 好评和列表区内容
          Column() {
            // 好评区
            Column() {
              Text('最受好评电影')
                .width('100%').fontSize(14).fontColor('#333')
                .textAlign(TextAlign.Start).margin({ bottom: 12 })
              Scroll() {
                Row() {
                  Column() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Image('https://p0.pipi.cn/basicdata/'
                        + '54ecdeddf2a92339dd2c95022e99e5fe27091.jpg?'
                        + 'imageMogr2/thumbnail/2500x2500%3E'
                      ).width(85).height(115)
                      Text('')
                        .width('100%').height(35).linearGradient({
                        direction: GradientDirection.Bottom,
                        colors: [['rgba(0,0,0,0)', 0], [0x000000, 1]]
                      })
                      Text('观众评分：9.6')
                        .fontColor('#faaf00').fontSize(11)
                        .fontWeight(700).offset({ x: 4, y: -4 })
                    }.height(115).margin({ bottom: 6 })
                    Text('出走的决心')
                      .fontSize(13).fontWeight(FontWeight.Bold).width(85)
                      .textAlign(TextAlign.Start).margin({ bottom: 3 })
                  }.width(85).margin({ right: 10 })

                  Column() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Image("https://ts1.tc.mm.bing.net/th/id/OIP-C.A7l_vyiI2K4T8oD2CZXiUgHaKX?r=0&rs=1&pid=ImgDetMain&o=7&rm=3").width(85).height(115)
                      Text("").width("100%").height(35).linearGradient({
                        direction: GradientDirection.Bottom,
                        colors: [["rgba(0,0,0,0)", 0], [0x000000, 1]]
                      })
                      Text("观众评分：9.5").fontColor("#faaf00").fontSize(11).fontWeight(700).offset({ x: 4, y: -4 })
                    }.height(115).margin({ bottom: 6 })
                    Text("你好，李焕英").fontSize(13).fontWeight(FontWeight.Bold).width(85).textAlign(TextAlign.Start).margin({ bottom: 3 })
                  }.width(85).margin({ right: 10 })


                  //《唐人街探案》
                  Column() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Image("https://imgs.design006.com/202301/Design006_tW8A2ai5ds.jpg?x-oss-process=style/prev_w_750_h_auto").width(85).height(115)
                      Text("").width("100%").height(35).linearGradient({
                        direction: GradientDirection.Bottom,
                        colors: [["rgba(0,0,0,0)", 0], [0x000000, 1]]
                      })
                      Text("观众评分：9.2").fontColor("#faaf00").fontSize(11).fontWeight(700).offset({ x: 4, y: -4 })
                    }.height(115).margin({ bottom: 6 })
                    Text("唐人街探案").fontSize(13).fontWeight(FontWeight.Bold).width(85).textAlign(TextAlign.Start).margin({ bottom: 3 })
                  }.width(85).margin({ right: 10 })

                  Column() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Image('https://ts2.tc.mm.bing.net/th/id/OIP-C.-xaqqYCCyeD3zNlLBVwH0QHaMC?r=0&rs=1&pid=ImgDetMain&o=7&rm=3'
                      ).width(85).height(115)
                      Text('')
                        .width('100%').height(35).linearGradient({
                        direction: GradientDirection.Bottom,
                        colors: [['rgba(0,0,0,0)', 0], [0x000000, 1]]
                      })
                      Text('观众评分：9.6')
                        .fontColor('#faaf00').fontSize(11)
                        .fontWeight(700).offset({ x: 4, y: -4 })
                    }.height(115).margin({ bottom: 6 })
                    Text('只此青绿')
                      .fontSize(13).fontWeight(FontWeight.Bold).width(85)
                      .textAlign(TextAlign.Start).margin({ bottom: 3 })
                  }.width(85).margin({ right: 10 })


                }
              }
              .scrollable(ScrollDirection.Horizontal).scrollBar(BarState.Off)
              .edgeEffect(EdgeEffect.Spring)
            }.width('100%').padding({ top: 12, bottom: 12, left: 15, right: 15 })
            // 列表区
            Column() {
              Row() {
                Image('https://p0.pipi.cn/basicdata/'
                  + '54ecdedd5377e187a9e7aa5ee9ec15a184b18.jpg?'
                  + 'imageMogr2/thumbnail/2500x2500%3E?imageView2/1/w/128/h/180'
                ).width(64).height(90)
                Stack({ alignContent: Alignment.End }) {
                  Column() {
                    Row() {
                      Text('志愿军：存亡之战').fontSize(17).fontWeight(FontWeight.Bold)
                      Image($r("app.media.v2dimax")).width(43).height(14).margin({ left: 4 })
                    }
                    Text() {
                      Span('274337').fontColor('#faaf00')
                      Span('人想看').fontColor('#666').fontSize(13)
                    }
                    Text('主演: 朱一龙,辛柏青,张子枫').fontColor('#666').fontSize(13)
                    Text('2024-09-30 下周一上映').fontColor('#666').fontSize(13)
                  }
                  .alignItems(HorizontalAlign.Start).height('100%').width('100%')
                  .justifyContent(FlexAlign.SpaceEvenly).padding({ right: 53 })
                  Button() {
                    Text('预售').fontColor('#fff').fontSize(13).fontWeight(500)
                  }.width(54).height(28).backgroundColor('#3C9FE6')
                }
                .height('100%').layoutWeight(1).margin({ left: 12 })
                .padding({ top: 12, right: 14, bottom: 12, left: 0 })
                .border({ width: { bottom: 1 }, color: '#eee' })
              }.height(144)
              Row() {
                Image(
                  "https://ts3.tc.mm.bing.net/th/id/OIP-C.XISeUVcHXHOLPFL7a8sV0wHaL1?r=0&rs=1&pid=ImgDetMain&o=7&rm=3"
                )
                  .width(64)
                  .height(90)

                Stack({ alignContent: Alignment.End }) {
                  Column() {
                    Row() {
                      Text("长安三万里")
                        .fontSize(17)
                        .fontWeight(FontWeight.Bold)

                      Image($r("app.media.v2dimax"))
                        .width(43)
                        .height(14)
                        .margin({ left: 4 })
                    }

                    Text() {
                      Span("186521")
                        .fontColor("#faaf00")
                      Span("人想看")
                        .fontColor("#666")
                        .fontSize(13)
                    }

                    Text("主演: 杨天翔,凌振赫,吴俊全")
                      .fontColor("#666")
                      .fontSize(13)

                    Text("2023-07-08 已上映")
                      .fontColor("#666")
                      .fontSize(13)
                  }
                  .alignItems(HorizontalAlign.Start)
                  .height("100%")
                  .width("100%")
                  .justifyContent(FlexAlign.SpaceEvenly)
                  .padding({ right: 53 })

                  Button() {
                    Text("购票")
                      .fontColor("#fff")
                      .fontSize(13)
                      .fontWeight(500)
                  }
                  .width(54)
                  .height(28)
                  .backgroundColor("#e54847")
                }
                .height("100%")
                .layoutWeight(1)
                .margin({ left: 12 })
                .padding({
                  top: 12,
                  right: 14,
                  bottom: 12,
                  left: 0
                })
                .border({
                  width: { bottom: 1 },
                  color: "#eee"
                })
              }
              .height(144)


              Row() {
                Image("https://ts4.tc.mm.bing.net/th/id/OIP-C.tKWaAmCOgJC4ZF44xPds7AHaLB?r=0&rs=1&pid=ImgDetMain&o=7&rm=3")
                  .width(64)
                  .height(90)

                Stack({ alignContent: Alignment.End }) {
                  Column() {
                    Row() {
                      Text("流浪地球2")
                        .fontSize(17)
                        .fontWeight(FontWeight.Bold)

                      Image($r("app.media.v2dimax"))
                        .width(43)
                        .height(14)
                        .margin({ left: 4 })
                    }

                    Text() {
                      Span("328946")
                        .fontColor("#faaf00")
                      Span("人想看")
                        .fontColor("#666")
                        .fontSize(13)
                    }

                    Text("主演: 吴京,刘德华,李雪健")
                      .fontColor("#666")
                      .fontSize(13)

                    Text("2023-01-22 已上映")
                      .fontColor("#666")
                      .fontSize(13)
                  }
                  .alignItems(HorizontalAlign.Start)
                  .height("100%")
                  .width("100%")
                  .justifyContent(FlexAlign.SpaceEvenly)
                  .padding({ right: 53 })

                  Button() {
                    Text("购票")
                      .fontColor("#fff")
                      .fontSize(13)
                      .fontWeight(500)
                  }
                  .width(54)
                  .height(28)
                  .backgroundColor("#e54847")
                }
                .height("100%")
                .layoutWeight(1)
                .margin({ left: 12 })
                .padding({
                  top: 12,
                  right: 14,
                  bottom: 12,
                  left: 0
                })
                .border({
                  width: { bottom: 1 },
                  color: "#eee"
                })
              }
              .height(144)


            }.backgroundColor('#fff').padding({ left: 15 })
          }.height('100%')
        }
        .layoutWeight(1)
      }.width('100%').layoutWeight(1)


      //3.底部
      Row(){
        //3-1   电影/影院
        Column(){
          Image($r("app.media.movie"))
            .width(30).height(32).fillColor("#e5 48 47")
          Text("电影/影院")
            .fontSize(10).fontColor("#e5 48 47")
        }
        .layoutWeight(1).height("100%").justifyContent(FlexAlign.SpaceEvenly)//子元素排列方式

        //3-2 视频
        Column(){
          Image($r("app.media.video"))
            .width(28).height(32).fillColor("#696969")
          Text("视频")
            .fontSize(10).fontColor("#696969")
        }
        .layoutWeight(1).height("100%").justifyContent(FlexAlign.SpaceEvenly)


        //3-3 演出
        Column(){
          Image($r("app.media.perform"))
            .width(25).height(26).fillColor("#696969")
          Text("演出")
            .fontSize(10).fontColor("#696969")
        }
        .layoutWeight(1).height("100%").justifyContent(FlexAlign.SpaceEvenly)

        //我的
        Column(){
          Image($r("app.media.mine"))
            .width(30).height(32).fillColor("#696969")
          Text("我的")
            .fontSize(10).fontColor("#696969")
        }
        .layoutWeight(1).height("100%").justifyContent(FlexAlign.SpaceEvenly)



      }
      .width("100%").height(50).backgroundColor('#fff')
      .border({width:{top:1},color:"#aaa"})
    }
  }
}