import { router } from '@kit.ArkUI'

@Entry
@Component
struct Vacature {
  @State message: string = 'this is Vacature'

  build() {
    RelativeContainer() {
      Text(this.message)
        .fontSize((40))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      Button() {
        Text('Back')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
      }
      .type(ButtonType.Capsule)
      .margin({ top: 10, left: 10 })
      .backgroundColor('#0D9FFB')
      .width('40%')
      .height('5%')
      .onClick(() => {
        router.back()
      })
    }
    .width('100%')
    .height('100%')
  }
}