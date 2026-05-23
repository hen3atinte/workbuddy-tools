# workbuddy-tools
WorkBuddy utility scripts and automation tools.

## Tools
- **auto_qr.sh** — Auto QR code generation script
- **generate_icons.py** — PNG icon generator (pure Python, no deps)

## Usage
=== 飞书扫码自动维持脚本 ===
二维码每90秒自动刷新
保存位置: /c/Users/USER248852/.workbuddy/feishu_qr_live.png

[22:41:11] 正在刷新二维码...
### Ran Playwright code
```js
await page.reload();
```
### Page
- Page URL: https://ta6hb0ysuge.feishu.cn/docx/Pv4rdAp0eoUsIAxXtiQc3hUHnEd?302from=wiki
- Page Title: ‌‍⁢⁣‬‬​⁡​‌​​‌⁤‍⁢‍‬⁣‌﻿‌​​⁤⁢‬⁡​‌‌‌‍⁢​​‬‍⁡‬⁢‌‬⁣⁡‍⁣⁣﻿​飞书云文档
- Console: 1 errors, 3 warnings
### Snapshot
- [Snapshot](.playwright-cli\page-2026-05-23T14-41-17-320Z.yml)
### Events
- New console entries: .playwright-cli\console-2026-05-22T13-56-21-384Z.log#L27-L32
### Result
- [Screenshot of viewport](..\..\.workbuddyeishu_qr_live.png)
### Ran Playwright code
```js
// Screenshot viewport and save it as ..\..\.workbuddyeishu_qr_live.png
await page.screenshot({
  path: '..\..\.workbuddy\feishu_qr_live.png',
  scale: 'css',
  type: 'png'
});
```
### Page
- Page URL: https://ta6hb0ysuge.feishu.cn/docx/Pv4rdAp0eoUsIAxXtiQc3hUHnEd?302from=wiki
- Page Title: ‌‍⁢⁣‬‬​⁡​‌​​‌⁤‍⁢‍‬⁣‌﻿‌​​⁤⁢‬⁡​‌‌‌‍⁢​​‬‍⁡‬⁢‌‬⁣⁡‍⁣⁣﻿​聪哥的 5 号工具箱-直播工具 - 飞书云文档
- Console: 2 errors, 3 warnings
### Events
- New console entries: .playwright-cli\console-2026-05-22T13-56-21-384Z.log#L33-L34
[22:41:21] 二维码已更新 → /c/Users/USER248852/.workbuddy/feishu_qr_live.png

✅ 登录成功！
当前页面: https://ta6hb0ysuge.feishu.cn/docx/Pv4rdAp0eoUsIAxXtiQc3hUHnEd?302from=wiki
### Result
- [Storage state](..\..\.workbuddy\playwright-feishueishu_state.json)
### Ran Playwright code
```js
await page.context().storageState({ path: '..\..\.workbuddy\playwright-feishueishu_state.json' });
```
登录态已保存
### Ran Playwright code
```js
await page.goto('https://ta6hb0ysuge.feishu.cn/wiki/RyXHwqg0vitVFWkoIT1csrWgn9f');
```
### Page
- Page URL: https://ta6hb0ysuge.feishu.cn/docx/Q3DRdXN4doiwJHxhcqAc1BsFnbf?302from=wiki
- Page Title: ⁣‬​‬​⁣‍⁡⁤‍‬‍⁡⁡‍⁤​‬⁢⁣﻿⁤⁢​‬​‍⁢⁡⁤‌⁡⁤⁣​⁣‬​‬﻿‬‌⁣﻿‍﻿‌​﻿聪哥的 1 号工具箱-新媒体招聘工具 - 飞书云文档
- Console: 2 errors, 2 warnings
### Snapshot
- [Snapshot](.playwright-cli\page-2026-05-23T14-41-34-011Z.yml)
### Events
- New console entries: .playwright-cli\console-2026-05-23T14-41-27-472Z.log#L1-L8
浏览器保持开启，等待提取内容...
