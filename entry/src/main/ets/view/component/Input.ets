@Component
export default struct Input{
  @State isFocus:boolean=false;

  // 标题
  title:string=''
  icon: Resource | null = null
  placeholder:string=''
  inputType:InputType=InputType.Normal

  build(){
    Column(){
      Text(this.title)
        .width('100%')
        .textAlign(TextAlign.Start)
        .fontSize(16)
        .fontWeight(500)
        .fontColor($r('app.color.font_color'))
        .margin({bottom:14})
      Flex({alignItems:ItemAlign.Center}){
        if (this.icon){
          Image(this.icon)
            .width(40)
            .height(40)
        }

          TextInput({
            placeholder:this.placeholder
          })
            .onFocus(()=>{
              this.isFocus=true
            })
            .onBlur(()=>{
              this.isFocus=false
            })
            .placeholderColor('rgba(0,40,132,0.6)')

            .backgroundColor('#FBFBFD')
            .style(TextInputStyle.Inline)
            .width('100%')
            .type(this.inputType)
      }
      // .backgroundColor($r('app.color.'))
      .height(50)
      .width('100%')
      .padding({left :10,right:10})
      .borderRadius(10)
      .border({width:this.isFocus?2:0,color :'#002884'})
    }
  }

}