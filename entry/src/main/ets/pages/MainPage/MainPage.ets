import { DataStatistic } from '../view/DataStatistic';
import { Home } from '../view/Home';
import { My } from '../view/My';
import { Wallet } from '../view/Wallet';
import { NavBar } from './Component/NavBar';

// const arr=[]
// for (let i=0;i<50;i++){
//   arr.push(i)
// }


@Entry
@Component
struct MainPage {
  @State currentIndex: number =0;

  build() {
  Column(){
    // 各个页面的内容

  Scroll(){

      if (this.currentIndex === 0) {
        // 首页
        Home();

      } else if (this.currentIndex === 1) {
        // 数据分析
        DataStatistic();
      } else if (this.currentIndex === 3) {
        // 钱包
        Wallet();
      } else if (this.currentIndex === 4) {
        // 个人中心
        My();
      }

}
 .padding({bottom:100})



    // 底部导航栏
    NavBar({
      currentIndex: $currentIndex
    })
      .offset({y:-50})
  }
  .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r('app.color.base_background'))
  }
}