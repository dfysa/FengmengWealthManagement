import { InputMethodListDialog } from '@ohos.inputMethodList';
import Input from '../../view/component/Input';

interface GeneratedTypeLiteralInterface_1 {
  value: string;
}

@CustomDialog

export struct PayDialog{
  // 添加 CustomDialogController 类型的属性
  dialogController: CustomDialogController;

  getCardOptions(): GeneratedTypeLiteralInterface_1[] {
    return [{ value: '中原银行(xxxx)' }];
  }

  build(){
    Flex({direction:FlexDirection.Column,alignItems:ItemAlign.Center}){
      Text('付款给')
        .fontSize(20)
        .fontWeight(500)
        .padding({top:20,bottom:20})
        .textAlign(TextAlign.Center)
        .width('100%')
        .border({width:{bottom:1},color :'#add'})

      Column({space:10}){
        Text('中原银行')
          .fontSize(20)
          .fontWeight(500)

        Text('120@qq.com')
          .fontSize(14)
          .fontWeight(400)
          .fontColor('#ddd')
      }
      .width(200)
      .height(100)
      .padding(20)
      .shadow({
      radius:40,
        color:'#ddd'
      })
      .margin({top:20})


     Flex({direction:FlexDirection.Column,alignItems:ItemAlign.Start} ){
        Text('支付账户')
          .fontSize(20)
          .fontWeight(500)
          .textAlign(TextAlign.Start)

       Flex({justifyContent:FlexAlign.SpaceBetween,alignItems:ItemAlign.Center}){
          Image($r('app.media.card_cover'))
            .width(30)
            .height(20)

         Select(this.getCardOptions())
           .selected(1)
           .value('中原银行(xxxx)')
           .font({size:16,weight:400})
           .selectedOptionFont({size:16,weight:400})
           .optionFont({size:16,weight:400})



       }
       .width('100%')
       .margin({top:20})
       .shadow({radius:40,color :'#ddd'})
       .padding(20)

       Text('支付金额')
         .fontSize(20)
         .fontWeight(500)
         .textAlign(TextAlign.Start)
         .margin({top:20})
       Text('￥10')
         .fontSize(20)
         .width('100%')
         .textAlign(TextAlign.Center)

       Column({space:20}){

          Input({
            title:'用户订单姓名'
          })

         Input({
           title:'用户订单电话'
         })       .margin({top:20})

         Flex({justifyContent:FlexAlign.Center}){
            Button('确定支付')
              .backgroundColor('#7AE3ED')
         }




       }
       .margin({top:20})


     }
      .margin({top:20})
      .padding({left:20,right:20})
     .width('100%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
    .margin({top:80})
    .borderRadius({
      topLeft:20,
      topRight:20
    })

  }
}