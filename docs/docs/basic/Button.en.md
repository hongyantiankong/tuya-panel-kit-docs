---
title: Button
desc: '`Button` is one of the most commonly used components, used in some occasions that need to be clicked, such as plain text, pictures, and icons.'
demo: /basic/button
---

## Code demo

### Plain text button

```jsx
import { Button } from 'tuya-panel-kit'

<Button text="Click me" />
```

### Pure icon button

```jsx
import { Button, Utils } from 'tuya-panel-kit'

const { convertX: cx } = Utils.RatioUtils;

const powerPath = `M874.039 149.961c199.948 199.949 199.948 524.13 0 724.078-199.949 199.948-524.13 199.948-724.078 0-199.948-199.949-199.948-524.13 0-724.078 19.995-19.995 52.413-19.995 72.408 0 19.995 19.995 19.995 52.413 0 72.408-159.959 159.959-159.959 419.303 0 579.262 159.959 159.959 419.303 159.959 579.262 0 159.959-159.959 159.959-419.303 0-579.262-19.995-19.995-19.995-52.413 0-72.408 19.995-19.995 52.413-19.995 72.408 0zM562.2 0a1 1 0 0 1 1 1v510a1 1 0 0 1-1 1H461.8a1 1 0 0 1-1-1V1a1 1 0 0 1 1-1h100.4z`;

<Button
  iconColor="#fff"
  size={24}
  style={{
    width: cx(48),
    height: cx(48),
    backgroundColor: '#1C1D1E',
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 1,
    },
    shadowOpacity: 0.5,
    shadowRadius: 8,
    elevation: 8,
  }}
  wrapperStyle={{
    alignSelf: 'flex-start',
  }}
  iconPath={powerPath}
/>
```

### Button with Icon text

```jsx
import { Button, Utils } from 'tuya-panel-kit'

const { convertX: cx } = Utils.RatioUtils;

const powerPath = `M874.039 149.961c199.948 199.949 199.948 524.13 0 724.078-199.949 199.948-524.13 199.948-724.078 0-199.948-199.949-199.948-524.13 0-724.078 19.995-19.995 52.413-19.995 72.408 0 19.995 19.995 19.995 52.413 0 72.408-159.959 159.959-159.959 419.303 0 579.262 159.959 159.959 419.303 159.959 579.262 0 159.959-159.959 159.959-419.303 0-579.262-19.995-19.995-19.995-52.413 0-72.408 19.995-19.995 52.413-19.995 72.408 0zM562.2 0a1 1 0 0 1 1 1v510a1 1 0 0 1-1 1H461.8a1 1 0 0 1-1-1V1a1 1 0 0 1 1-1h100.4z`;

<Button
  iconColor="#fff"
  size={24}
  style={{
    width: cx(48),
    height: cx(48),
    backgroundColor: '#1C1D1E',
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 1,
    },
    shadowOpacity: 0.5,
    shadowRadius: 8,
    elevation: 8,
  }}
  iconPath={powerPath}
  text={'power'}
/>
<Button
  iconColor="#fff"
  textDirection="right"
  size={24}
  iconPath={powerPath}
  style={{
    width: cx(48),
    height: cx(48),
    backgroundColor: '#1C1D1E',
  }}
  textStyle={{
    color: '#fff',
    marginLeft: 0,
    marginRight: cx(15),
  }}
  wrapperStyle={{
    backgroundColor: '#1C1D1E',
    borderRadius: cx(12),
    marginLeft: cx(27),
    position: 'relative',
    top: cx(-12),
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 1,
    },
    shadowOpacity: 0.5,
    shadowRadius: 8,
    elevation: 8,
  }}
  text={'power'}
/>
```

### Icon button (with background gradient)

```jsx
import { Button } from 'tuya-panel-kit'

<Button
  textDirection="right"
  size={40}
  icon="selected"
  iconSize={24}
  iconColor="#fff"
  text="Text"
  background={{
    x1: '20%',
    y1: '20%',
    x2: '30%',
    y2: '100%',
    stops: {
      '0%': '#ffff00',
      '100%': '#000',
    },
  }}
/>
```

## API

extends [TouchableOpacityProps](https://reactnative.dev/docs/touchableopacity#props)

<API name="ButtonProps"></API>
