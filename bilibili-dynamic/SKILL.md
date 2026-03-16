---
name: bilibili-dynamic
description: |
  获取 Bilibili 用户动态、关注列表、用户信息等。使用此 skill 进行：
  (1) 获取指定用户的动态内容
  (2) 获取用户详细信息
  (3) 获取用户的关注列表/粉丝列表
  (4) 获取登录用户的个人动态流
---

# Bilibili 用户动态

## 依赖安装

```bash
pip install bilibili-api-python
```

## 认证方式

需要 B 站登录凭证，使用以下方式之一：

### 方式 1：Cookie 认证
```python
from bilibili_api import Credential

# 从浏览器开发者工具获取 Cookie
SESSDATA = "你的SESSDATA值"
BILI_JCT = "你的bili_jct值"
BUVID3 = "你的BUVID3值"

credential = Credential(
    sessdata=SESSDATA,
    bili_jct=BILI_JCT,
    buvid3=BUVID3
)
```

### 方式 2：使用 select_client
```python
from bilibili_api import select_client

# 支持 aiohttp / requests / httpx
select_client("requests")  # 推荐
```

## 获取用户动态

### 获取指定用户的动态

```python
import asyncio
from bilibili_api import user, Credential

async def get_user_dynamics(uid: int, credential: Credential = None):
    u = user.User(uid=uid, credential=credential)
    # 获取用户的所有动态
    dynamics = await u.get_dynamics()
    return dynamics

# 运行
asyncio.run(get_user_dynamics(用户UID))
```

### 获取当前登录用户的动态

```python
import asyncio
from bilibili_api import Credential, video

async def main():
    credential = Credential(
        sessdata="你的SESSDATA",
        bili_jct="你的bili_jct",
        buvid3="你的BUVID3"
    )
    
    # 获取自己的动态
    my_user = user.User(uid=0, credential=credential)
    dynamics = await my_user.get_dynamics()
    print(dynamics)

asyncio.run(main())
```

## 获取用户信息

```python
import asyncio
from bilibili_api import user, Credential

async def get_user_info(uid: int):
    u = user.User(uid=uid)
    info = await u.get_user_info()
    return info

asyncio.run(get_user_info(用户UID))
```

## 获取关注列表

```python
import asyncio
from bilibili_api import user, Credential

async def get_followings(uid: int, credential: Credential = None):
    u = user.User(uid=uid, credential=credential)
    # 获取关注列表
    followings = await u.get_followings()
    return followings

asyncio.run(get_followings(用户UID))
```

## 获取粉丝列表

```python
import asyncio
from bilibili_api import user, Credential

async def get_followers(uid: int, credential: Credential = None):
    u = user.User(uid=uid, credential=credential)
    # 获取粉丝列表
    followers = await u.get_followers()
    return followers

asyncio.run(get_followers(用户UID))
```

## 完整示例：获取并解析动态

```python
import asyncio
from bilibili_api import user, Credential

async def fetch_dynamics(uid: int, limit: int = 10):
    credential = Credential(
        sessdata="你的SESSDATA",
        bili_jct="你的bili_jct",
        buvid3="你的BUVID3"
    )
    
    u = user.User(uid=uid, credential=credential)
    dynamics = await u.get_dynamics()
    
    # 解析动态内容
    for i, card in enumerate(dynamics.get('cards', [])[:limit]):
        card_data = card['card']
        dynamic_type = card['desc']['type']
        
        print(f"\n=== 动态 {i+1} ===")
        print(f"类型: {dynamic_type}")
        
        # 根据类型解析内容
        if dynamic_type == 1:  # 转发
            print(f"转发内容: {card_data['item']['content']}")
        elif dynamic_type == 2:  # 图片
            print(f"图文内容: {card_data['item']['description']}")
        elif dynamic_type == 4:  # 文字
            print(f"文字: {card_data['item']['content']}")
        
        print(f"时间: {card['desc']['timestamp']}")

asyncio.run(fetch_dynamics(用户UID))
```

## 动态类型参考

| type | 含义 |
|------|------|
| 1 | 转发 |
| 2 | 图片 |
| 4 | 纯文字 |
| 8 | 视频 |
| 16 | 音频 |
| 64 | 专栏 |
| 256 | 弹幕 |

## 获取 Cookie 方法

1. 登录 B 站网页版 (bilibili.com)
2. 按 F12 打开开发者工具
3. Application/存储 → Cookies → bilibili.com
4. 复制 SESSDATA、BILI_JCT、BUVID3 的值
