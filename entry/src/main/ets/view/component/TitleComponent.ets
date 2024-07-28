import router from '@ohos.router'

@Component
export default struct TitleComponent  {
  @Prop title:string
  isBack =false
  back=()=>{
    router.back()
  }
  build(){
    Flex({justifyContent:FlexAlign.SpaceBetween,alignItems:ItemAlign.Center}){
      Image(this.isBack?$r('app.media.Button_left'):'')
        .width(44)
        .height(44)
        .objectFit(ImageFit.ScaleDown)
        .onClick(()=>{
        this.back()
        })

      Text(this.title)
        .fontColor('rgb(1,23,73)')
        .fontSize(20)
        .fontWeight(700)
      Text('')
        .width(44)
        .height(44)
    }
    .padding({ top:12,bottom:12})
  }

}