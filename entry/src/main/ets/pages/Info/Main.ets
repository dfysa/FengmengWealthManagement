import Input from '../../view/component/Input';
import TitleComponent from '../../view/component/TitleComponent';
import router from '@ohos.router';

@Entry
@Component
struct Main {
  @State message: string = 'Hello World';

  build() {

    Column(){
      TitleComponent({
        title:'资料',
        isBack:true
      })
      Column(){
        Image($r('app.media.avatar_icon'))
          .width(100)
          .height(100)
      }
      Flex({justifyContent:FlexAlign.Start  }){
        Text('个人信息')
          .fontSize(21)
          .fontWeight(700)
          .textAlign(TextAlign.Start)
      }
      .margin({top:30})

      Column({space:20}){
        Input({
          title:'用户名'
        })
        Input({
          title:'联系电话'
        })
        Input({
          title:'邮箱'
        })
      }.margin({top:20})

      Flex(){
        Button('取消')
          .backgroundColor('#FBFBFD')
          .fontColor('#ffb7b1b1')
          .width(160)
          .onClick(()=>{
            router.back()
          })
        Button('保存')
          .backgroundColor("#7AE4ED")

          .width(160)
      }
      .margin({
        top:20
      })

    }
    .padding({left:20,right:20})
    .backgroundColor($r('app.color.base_background'))
    .height('100%')
  }
}