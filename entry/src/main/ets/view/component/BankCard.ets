@Component
export  struct BankCard{
  bank='中原银行'
  cardNumber='xxx xxx xxx xxx xxx'
  expiredAt='05/14'
  amount=0
  empty=true



  build() {
  Column(){
 Flex({justifyContent:FlexAlign.SpaceBetween,alignItems:ItemAlign.Center}){
   Text(this.empty?'':'银行名')
     .fontSize(14)
     .fontColor(Color.White)

   Image($r('app.media.card_icon'))
     .width(35)
     .height(28)
 }

 if (this.empty){
   Text('暂无银行卡，快去添加吧')
     .fontColor(Color.White)
     .fontSize(20)
     .margin({top:30})
 }else{
   Flex({justifyContent:FlexAlign.Start,alignItems:ItemAlign.Center}){
     Text('￥')
       .fontSize(11)
       .fontColor(Color.White)
       .fontWeight(700)
     Text('1000')
       .fontSize(14)
       .fontWeight(700)
       .fontColor(Color.White)

   }
   .margin({top:30})

   Flex({ justifyContent: FlexAlign.Start }){
     Text('xxx xxx xxx xxx xxx xxx')
       .fontColor(Color.White)

     Text('05/24')
       .fontColor(Color.White)
       .margin({left:30})
   }
   .margin({top:20})

 }






  }
    .width('100%')
    .height(178)
    .backgroundColor('#7AE4ED')
    .borderRadius(20)
    .padding(20)
  }
}