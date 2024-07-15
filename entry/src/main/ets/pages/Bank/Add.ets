import { BankCard } from '../../view/component/BankCard'
import Input from '../../view/component/Input'
import TitleComponent from '../../view/component/TitleComponent'

@Entry
@Component
struct Add{
  @State message:string =''

  build() {
    Flex({wrap:FlexWrap.Wrap,justifyContent:FlexAlign.Center}){
      TitleComponent({title:'添加银行卡',isBack:true})
      Flex({justifyContent:FlexAlign.Start,direction:FlexDirection.Column}){
        Text('卡片信息')
          .fontColor('#001749')
          .fontSize(21)
          .fontWeight(500)
        Column({space:20}){
          Input({
            title:'所属银行',
            placeholder:"请输入所属银行",


          })
          Input({
            title:'银行卡号',
            placeholder:"请输入银行卡号",


          })

          Input({
            title:'持卡人姓名',
            placeholder:"请输入持卡人姓名",


          })


        }
        .margin({top:20})
        Flex(){
          Input({
            title:'CCV',
            placeholder:'2544'
          })
          Input({
            title:'到期时间',
            placeholder:'x年x月x日'
          })
        }
        .margin({top:20})

        Flex({alignItems:ItemAlign.Center,justifyContent:FlexAlign.Center}){
          Text('添加银行卡')
            .fontColor(Color.White)
            .fontWeight(500)
            .fontSize(17)
            .width(228)
            .height(50)
            .backgroundColor('#38BFDA')
            .borderRadius(50)
            .textAlign(TextAlign.Center )

        }     .margin({top:40})



      } .margin({top:40})




    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.base_background'))
    .padding({left:20,right:20})



  }
}