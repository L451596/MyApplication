@Entry
@Component
struct WidgetCard {
  /*
   * The title.
   */
  readonly TITLE: string = 'Hello World';
  /*
   * The action type.
   */
  readonly ACTION_TYPE: string = 'router';
  /*
   * The ability name.
   */
  readonly ABILITY_NAME: string = 'EntryAbility';
  /*
   * The message.
   */
  readonly MESSAGE: string = 'add detail';
  /*
   * The width percentage setting.
   */
  readonly FULL_WIDTH_PERCENT: string = '100%';
  /*
   * The height percentage setting.
   */
  readonly FULL_HEIGHT_PERCENT: string = '100%';
  @State x: number = 1
  @State y: number = 1
  @State btn_name: string = 'Click'

  build() {
    Column() {
      Button(this.btn_name)
        .fontSize($r('app.float.font_size'))
        .fontWeight(FontWeight.Medium)
        .fontColor($r('app.color.item_title_font'))
        .onClick(() => {
          this.x = 1.1
          this.y = 1.1
        })
        .scale({ x: this.x, y: this.y })
        .animation({
          curve: Curve.EaseOut,
          playMode: PlayMode.AlternateReverse,
          duration: 200,
          onFinish: () => {
            this.x = 1
            this.y = 1
          }
        })
    }
    .padding('10vp')
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      postCardAction(this, {
        "action": 'router',
        "abilityName": 'EntryAbility',
        "params": {
          "message": 'router test'
        }
      })
    })
  }
}