---
title: TopBar 头部栏
desc: '`TopBar` 是默认集成在 `FullView` 中的顶部工具栏，在安卓中也称为 `ActionBar`，IOS 中称为 `UINavigationBar`。<br/>新版的 `TopBar` 统一了 IOS 及安卓两端的写法，且拆分出了 [TopBar.Container](#TopBar.Container) 、[TopBar.Content](#TopBar.Content) 以及 [TopBar.Action](#TopBar.Action) 三个组件，若存在高度定制情况，可使用三大组件进行组合构建。<br/>此外我们还封装了一份常用的 [TopBar](#TopBar) 组件，用于较为基础的 TopBar 定制需求。<br/>另外，`TopBar` 的高度在安卓和 IOS 上分别做了适配，可以通过 `TopBar.height` 获取到 `TopBar` 的高度。如果是 IPhoneX 以上机型，高度是 88, 其余 iOS 机型高度是 64， 安卓的 TopBar 高度是 56。'
demo: /navigation/top-bar
---

## 代码演示

### 基础使用 - 拆分版

```jsx
import { TopBar } from 'tuya-panel-kit'

<TopBar.Container
  background="#fff"
  style={{ flex: 1, height: 48 }}
  contentStyle={{ height: 48, marginTop: 0 }}
>
  <TopBar.Action name="backIos" color="#4C4C4C" onPress={() => navigation.pop()} />
  <TopBar.Content />
  <TopBar.Action
    name="pen"
    color="#4C4C4C"
    onPress={() => TYSdk.native.showDeviceMenu()}
  />
</TopBar.Container>
```

### 基础使用 - 封装版

```jsx
import { TopBar } from 'tuya-panel-kit'

<TopBar
  style={{ flex: 1, height: 48 }}
  contentStyle={{ height: 48, marginTop: 0 }}
  background="#fff"
  title={'头部栏'}
  color="red"
  titleStyle={{
    color: '#4C4C4C',
  }}
  leftActions={[
    {
      name: 'backIos',
      color: '#4C4C4C',
    },
  ]}
  actions={[
    {
      name: 'pen',
      color: '#4C4C4C',
      onPress: () => TYSdk.native.showDeviceMenu(),
    },
  ]}
  onBack={() => navigation.pop()}
/>
```

### 径向渐变 - 封装版

```jsx
import { TopBar } from 'tuya-panel-kit'

const radialBackground = {
  stops: [
    {
      offset: '0%',
      stopColor: '#F9943E',
      stopOpacity: '1',
    },
    {
      offset: '100%',
      stopColor: '#F84E01',
      stopOpacity: '1',
    },
  ],
};

<TopBar
  style={{ flex: 1, height: 48 }}
  contentStyle={{ height: 48, marginTop: 0 }}
  background={radialBackground}
  title={'头部栏'}
  titleStyle={{ color: '#fff' }}
  leftActions={[
    {
      name: 'backIos',
      color: '#fff',
    },
  ]}
  actions={[
    {
      name: 'pen',
      color: '#fff',
      onPress: () => TYSdk.native.showDeviceMenu(),
    },
  ]}
  onBack={() => navigation.pop()}
/>
```

### 线性渐变 - 拆分版

```jsx
import { TopBar } from 'tuya-panel-kit'

const linearBackground = {
  stops: {
    '0%': '#F9943E',
    '100%': '#F84E01',
  },
};

<TopBar.Container
  style={{ flex: 1, height: 48 }}
  contentStyle={{ height: 48, marginTop: 0 }}
  background={linearBackground}
>
  <TopBar.Action name="backIos" color="#fff" onPress={() => navigation.pop()} />
  <TopBar.Content
    title={'头部栏'}
    titleStyle={{ color: '#fff' }}
  />
  <TopBar.Action
    name="pen"
    color="#fff"
    onPress={() => TYSdk.native.showDeviceMenu()}
  />
</TopBar.Container>
```

### 多工具栏 - 拆分版

```jsx
import { TopBar } from 'tuya-panel-kit'

const qrcode =
  'M170.666667,640 C192.547662,640 210.581639,656.471048 213.046283,677.690832 L213.333333,682.666667 L213.333333,780.190476 C213.333333,795.619383 224.798634,808.370426 239.674085,810.388455 L243.809524,810.666667 L341.333333,810.666667 C364.897483,810.666667 384,829.769184 384,853.333333 C384,875.214329 367.528952,893.248306 346.309168,895.71295 L341.333333,896 L243.809524,896 C182.218573,896 131.85733,847.919903 128.211354,787.245269 L128,780.190476 L128,682.666667 C128,659.102517 147.102517,640 170.666667,640 Z M853.333333,640 C875.214329,640 893.248306,656.471048 895.71295,677.690832 L896,682.666667 L896,780.190476 C896,841.781427 847.919903,892.14267 787.245269,895.788646 L780.190476,896 L682.666667,896 C659.102517,896 640,876.897483 640,853.333333 C640,831.452338 656.471048,813.418361 677.690832,810.953717 L682.666667,810.666667 L780.190476,810.666667 C795.619383,810.666667 808.370426,799.201366 810.388455,784.325915 L810.666667,780.190476 L810.666667,682.666667 C810.666667,659.102517 829.769184,640 853.333333,640 Z M767,469.333333 C767.552285,469.333333 768,469.781049 768,470.333333 L768,553.666667 C768,554.218951 767.552285,554.666667 767,554.666667 L257,554.666667 C256.447715,554.666667 256,554.218951 256,553.666667 L256,470.333333 C256,469.781049 256.447715,469.333333 257,469.333333 L767,469.333333 Z M341.333333,128 C364.897483,128 384,147.102517 384,170.666667 C384,192.547662 367.528952,210.581639 346.309168,213.046283 L341.333333,213.333333 L243.809524,213.333333 C228.380617,213.333333 215.629574,224.798634 213.611545,239.674085 L213.333333,243.809524 L213.333333,341.333333 C213.333333,364.897483 194.230816,384 170.666667,384 C148.785671,384 130.751694,367.528952 128.28705,346.309168 L128,341.333333 L128,243.809524 C128,182.218573 176.080097,131.85733 236.754731,128.211354 L243.809524,128 L341.333333,128 Z M780.190476,128 C841.781427,128 892.14267,176.080097 895.788646,236.754731 L896,243.809524 L896,341.333333 C896,364.897483 876.897483,384 853.333333,384 C831.452338,384 813.418361,367.528952 810.953717,346.309168 L810.666667,341.333333 L810.666667,243.809524 C810.666667,228.380617 799.201366,215.629574 784.325915,213.611545 L780.190476,213.333333 L682.666667,213.333333 C659.102517,213.333333 640,194.230816 640,170.666667 C640,148.785671 656.471048,130.751694 677.690832,128.28705 L682.666667,128 L780.190476,128 Z';

<TopBar.Container
  style={{ flex: 1, height: 48 }}
  contentStyle={{ height: 48, marginTop: 0 }}
  background="#fff"
>
  <TopBar.Action name="backIos" onPress={() => navigation.pop()} />
  <TopBar.Action
    source={'返回'}
    color="#4C4C4C"
    onPress={() => {
      TYSdk.mobile.simpleTipDialog(
        `click ${'定时'}`,
        () => {}
      );
    }}
  />
  <TopBar.Content
    title={'头部栏'}
    subTitle={'副标题'}
    onPress={() => {
      TYSdk.mobile.simpleTipDialog('click title', () => {});
    }}
  />
  {['edit'].map(v => (
    <TopBar.Action
      key={v}
      color="#4C4C4C"
      name={v as any}
      onPress={() => {
        TYSdk.mobile.simpleTipDialog(`click ${v}`, () => {});
      }}
    />
  ))}
  <TopBar.Action color="#4C4C4C" d={qrcode} size={cx(24)} />
</TopBar.Container>
```

### 多工具栏变 - 封装版

```jsx
import { TopBar } from 'tuya-panel-kit'

const qrcode =
  'M170.666667,640 C192.547662,640 210.581639,656.471048 213.046283,677.690832 L213.333333,682.666667 L213.333333,780.190476 C213.333333,795.619383 224.798634,808.370426 239.674085,810.388455 L243.809524,810.666667 L341.333333,810.666667 C364.897483,810.666667 384,829.769184 384,853.333333 C384,875.214329 367.528952,893.248306 346.309168,895.71295 L341.333333,896 L243.809524,896 C182.218573,896 131.85733,847.919903 128.211354,787.245269 L128,780.190476 L128,682.666667 C128,659.102517 147.102517,640 170.666667,640 Z M853.333333,640 C875.214329,640 893.248306,656.471048 895.71295,677.690832 L896,682.666667 L896,780.190476 C896,841.781427 847.919903,892.14267 787.245269,895.788646 L780.190476,896 L682.666667,896 C659.102517,896 640,876.897483 640,853.333333 C640,831.452338 656.471048,813.418361 677.690832,810.953717 L682.666667,810.666667 L780.190476,810.666667 C795.619383,810.666667 808.370426,799.201366 810.388455,784.325915 L810.666667,780.190476 L810.666667,682.666667 C810.666667,659.102517 829.769184,640 853.333333,640 Z M767,469.333333 C767.552285,469.333333 768,469.781049 768,470.333333 L768,553.666667 C768,554.218951 767.552285,554.666667 767,554.666667 L257,554.666667 C256.447715,554.666667 256,554.218951 256,553.666667 L256,470.333333 C256,469.781049 256.447715,469.333333 257,469.333333 L767,469.333333 Z M341.333333,128 C364.897483,128 384,147.102517 384,170.666667 C384,192.547662 367.528952,210.581639 346.309168,213.046283 L341.333333,213.333333 L243.809524,213.333333 C228.380617,213.333333 215.629574,224.798634 213.611545,239.674085 L213.333333,243.809524 L213.333333,341.333333 C213.333333,364.897483 194.230816,384 170.666667,384 C148.785671,384 130.751694,367.528952 128.28705,346.309168 L128,341.333333 L128,243.809524 C128,182.218573 176.080097,131.85733 236.754731,128.211354 L243.809524,128 L341.333333,128 Z M780.190476,128 C841.781427,128 892.14267,176.080097 895.788646,236.754731 L896,243.809524 L896,341.333333 C896,364.897483 876.897483,384 853.333333,384 C831.452338,384 813.418361,367.528952 810.953717,346.309168 L810.666667,341.333333 L810.666667,243.809524 C810.666667,228.380617 799.201366,215.629574 784.325915,213.611545 L780.190476,213.333333 L682.666667,213.333333 C659.102517,213.333333 640,194.230816 640,170.666667 C640,148.785671 656.471048,130.751694 677.690832,128.28705 L682.666667,128 L780.190476,128 Z';

<TopBar
  style={{ flex: 1, height: 48 }}
  contentStyle={{ height: 48, marginTop: 0 }}
  background="#fff"
  title={'头部栏'}
  subTitle={'副标题'}
  onPress={() => TYSdk.mobile.simpleTipDialog('click title', () => {})}
  leftActions={[
    {
      name: 'backIos',
      onPress: () => navigation.pop(),
    },
    {
      source: '返回',
      color: '#4C4C4C',
      onPress: () =>
        TYSdk.mobile.simpleTipDialog(
          `click ${'定时'}`,
          () => {}
        ),
    },
  ]}
  actions={['pen']
    .map(v => ({
      color: '#4C4C4C',
      name: v as any,
      onPress: () => TYSdk.mobile.simpleTipDialog(`click ${v}`, () => {}),
    }))
    .concat({
      // @ts-ignore
      d: qrcode,
      size: cx(24),
      color: '#4C4C4C',
    })}
/>
```

## API

### TopBar

<API name="TopBarProps"></API>

### TopBar.Container

<API name="TopBarContainerProps"></API>

### TopBar.Content

<API name="TopBarContentProps"></API>

### TopBar.Action

<API name="TopBarActionProps"></API>

## FAQ

1. 为什么 TYSdk.Navigator.pop 不生效？

检查下当前面板是否处于首页，若处于首页，当前路由栈仅一条，无法 pop，如需返回 APP 首页，请使用 TYSdk.mobile.back。
