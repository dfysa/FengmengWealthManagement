import { NavItem } from '../type'

@Component
struct NavBarImage {
  @ObjectLink navBarItem!: NavItem;

  @Prop isSelect:boolean

  build() {
    Column() {
      Image(this.isSelect?this.navBarItem.selectImg:this.navBarItem.normalImg)
        .size({ height: this.navBarItem.qrCode?54:25, width:this.navBarItem.qrCode?54: 25 });
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center);
  }
}

export { NavBarImage };
