import TitleComponent from '../../view/component/TitleComponent';
import { PayDialog } from './PayDialog';

@Entry
@Component
struct PayMain {

  dialogController=new CustomDialogController({
    builder:PayDialog(),
    alignment:DialogAlignment.Bottom,
    customStyle:true

  })
  onPageShow(): void {
    // 页面显示打开支付弹框
    this.dialogController.open()
  }
  build() {
    Flex({wrap:FlexWrap.Wrap,justifyContent:FlexAlign.Center}){
      TitleComponent({title:'支付'})

    }
  }
}