---
title: Swipeout
desc: Swipeout is a sliding operation component imitating IOS style.
demo: /feedback/swipeout
---

## Code demo

### Slide left

```jsx
import { Swipeout, IconFont, Utils } from 'tuya-panel-kit'

const { convertX: cx } = Utils.RatioUtils;

export const Icons = {
  Heart: (
    <IconFont
      style={{
        position: 'absolute',
        left: '50%',
        top: '50%',
        marginTop: -cx(7),
        marginLeft: -cx(7),
      }}
      color="white"
      d="M945.04003,120.634097 C894.507815,66.8110344 825.95718,36.5714286 754.477057,36.5714286 C682.996933,36.5714286 614.446299,66.8110344 563.914083,120.634097 L511.986898,175.917017 L460.059712,120.634097 C354.814688,8.58773556 184.178791,8.58773691 78.9337681,120.6341 C-26.3112549,232.680462 -26.3112562,414.343509 78.9337652,526.389874 L130.860951,581.672794 L511.258015,986.652586 C511.63613,987.055136 512.268986,987.074945 512.671536,986.69683 C512.686742,986.682547 512.701497,986.667791 512.71578,986.652586 L893.112845,581.672794 L893.112845,581.672794 L945.04003,526.389874 C995.595972,472.592071 1024,399.61143 1024,323.511985 C1024,247.41254 995.595972,174.431899 945.04003,120.634097 Z"
    />
  ),
};

<Swipeout
  autoClose={true}
  left={[
    {
      text: 'action',
      type: 'primary',
      backgroundColor: '#FAAD21',
      // @ts-ignore
      fontStyle: { color: '#fff', fontSize: 16 },
      content: Icons.Heart,
    },
  ]}
>
  <View
    style={{
      height: 44,
      backgroundColor: '#fff',
      justifyContent: 'center',
      alignItems: 'center',
      paddingHorizontal: 16,
    }}
  >
    <TYText style={{ color: '#333' }}>
      Try sliding left
    </TYText>
  </View>
</Swipeout>
```

### Slide right

```jsx
import { Swipeout, IconFont, Utils } from 'tuya-panel-kit'

const { convertX: cx } = Utils.RatioUtils;

export const Icons = {
  DeleteIcon: (
    <IconFont
      style={{
        position: 'absolute',
        left: '50%',
        top: '50%',
        marginTop: -cx(7),
        marginLeft: -cx(7),
      }}
      color="white"
      d="M768,256 C825.029202,256 871.895675,299.511814 877.212045,355.148068 L877.714286,365.714286 L877.714286,877.714286 C877.714286,954.83332 818.038653,1018.01436 742.346046,1023.59876 L731.428571,1024 L292.571429,1024 C215.452394,1024 152.271351,964.324367 146.686957,888.63176 L146.285714,877.714286 L146.285714,365.714286 C146.285714,308.685084 189.797528,261.818611 245.433782,256.502241 L256,256 L768,256 Z M402.285714,475.428571 C384.332077,475.428571 369.400073,488.365726 366.3035,505.426239 L365.714286,512 L365.714286,731.428571 L366.3035,738.002332 C369.400073,755.062845 384.332077,768 402.285714,768 C420.239352,768 435.171355,755.062845 438.267928,738.002332 L438.857143,731.428571 L438.857143,512 L438.267928,505.426239 C435.171355,488.365726 420.239352,475.428571 402.285714,475.428571 Z M621.714286,475.428571 C603.760648,475.428571 588.828645,488.365726 585.732072,505.426239 L585.142857,512 L585.142857,731.428571 L585.732072,738.002332 C588.828645,755.062845 603.760648,768 621.714286,768 C639.667923,768 654.599927,755.062845 657.6965,738.002332 L658.285714,731.428571 L658.285714,512 L657.6965,505.426239 C654.599927,488.365726 639.667923,475.428571 621.714286,475.428571 Z M474.443665,73.1923517 L564.344974,73.2273457 C594.825413,73.7855475 618.180277,78.0005819 621.347648,109.659176 L841.142857,109.714286 C861.340699,109.714286 877.714286,126.087872 877.714286,146.285714 C877.714286,164.239352 864.777131,179.171355 847.716618,182.267928 L841.142857,182.857143 L182.857143,182.857143 C162.659301,182.857143 146.285714,166.483557 146.285714,146.285714 C146.285714,128.332077 159.222869,113.400073 176.283382,110.3035 L182.857143,109.714286 L417.28,109.641143 L417.406371,108.498569 C421.02789,77.3184785 444.258596,73.6143467 474.443665,73.1923517 Z"
    />
  ),
};

<Swipeout
  autoClose={true}
  right={[
    {
      text: 'delete',
      type: 'delete',
      // @ts-ignore
      fontStyle: { color: '#fff', fontSize: 16 },
      content: Icons.DeleteIcon,
    },
  ]}
>
  <View
    style={{
      height: 44,
      backgroundColor: '#fff',
      justifyContent: 'center',
      alignItems: 'center',
      paddingHorizontal: 16,
    }}
  >
    <TYText style={{ color: '#333' }}>
      Try sliding right
    </TYText>
  </View>
</Swipeout>
```

### Disable sideslip

```jsx
import { Swipeout } from 'tuya-panel-kit'

<Swipeout
  autoClose={true}
  disabled={true}
  right={[
    {
      text: 'delete',
      type: 'delete',
      // @ts-ignore
      fontStyle: { color: '#fff', fontSize: 16 },
    },
  ]}
>
  <View
    style={{
      height: 44,
      backgroundColor: 'white',
      justifyContent: 'center',
      alignItems: 'center',
      paddingHorizontal: 16,
    }}
  >
    <TYText style={{ color: '#FF4444' }}>Disable sideslip</TYText>
  </View>
</Swipeout>
```

## API

<API name="SwipeoutProps" />
