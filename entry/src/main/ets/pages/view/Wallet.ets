import { BankCard } from '../../view/component/BankCard'
import TitleComponent from '../../view/component/TitleComponent'
import router from '@ohos.router'

@Component
export struct Wallet{


  arr=[1,2,3,4]

  build() {
    Column(){
      TitleComponent({title:"钱包"})
      Flex({justifyContent:FlexAlign.End}){
        Text('添加')
          .onClick(()=>{
            router.pushUrl({
              url:  "pages/Bank/Add"//跳转到登录
            })
          })
      }


      Swiper() {

        BankCard()
      }

      .loop(true)
      .indicatorStyle({
        size:10,
        color:'#D7E1E8',
        selectedColor:'#D7E1E8',
      })
      .margin({top:30})

      Flex({justifyContent:FlexAlign.Start, direction:FlexDirection.Column
      }){
        Text('最近联系')
          .fontColor('#001749')
          .fontSize(21)
          .fontWeight(500)

        Flex(){
          Column(){
            Image($r('app.media.zh_icon'))
              .width(60)
              .height(60)
              .borderRadius(60)
            Text('张三')
              .fontSize(12)
              .fontColor('#011749')
              .margin({top:10})

          }

        }

        .margin({top:20})



        Flex({justifyContent:FlexAlign.Start, direction:FlexDirection.Column
        }){
          Text('交易信息')
            .fontColor('#001749')
            .fontSize(21)
            .fontWeight(500)

          ForEach(this.arr,(item:number)=>{
            Flex(){
              Flex(){
                Image($r('app.media.avatar_icon'))
                  .width(45)
                  .height(45)
                Flex({direction:FlexDirection.Column}){
                  Text('百事副食店')
                    .fontColor('#001749')
                    .fontSize(12)
                  Text('2024年x月x日')
                    .fontColor('#ddd')
                    .fontSize(12)
                    .margin({top:20})


                }
              }
              Text('+100')
                .width(120)
                .padding(10)
                .backgroundColor('#f5ecf0')
                .fontSize(14)
                .fontColor('#ff4377')
                .textAlign(TextAlign.Center)
                .borderRadius(20)

            }
            .border({width :{bottom:1},color :'rgba(99,95,95,0.05)'})
            .padding({top:12,bottom:12,left:8,right:8})
            .margin({top:20})
            .backgroundColor('#fff')

          })
        }
        .margin({top:50})

      }
      .margin({top:30})





    }
    .height('100%')
    .padding({left:20,right:20})



  }
}