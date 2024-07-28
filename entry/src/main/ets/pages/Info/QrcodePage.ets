import TitleComponent from '../../view/component/TitleComponent';

@Entry
@Component
struct QrcodePage {
  @State message: string = 'Hello World';

  build() {

    Column(){
      TitleComponent({ title:"个人二维码",isBack:true})
      QRCode('1')
        .margin({top:40})

    }.padding({
      left:20,right:20
    })
    .backgroundColor($r('app.color.base_background'))
    .height('100%')
  }
}