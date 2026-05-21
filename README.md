# My Git Custom Aliases

這是我個人使用的 `.gitconfig` 設定檔，主要包含了一組精心調整過的 `git log` 自訂別名（Aliases）。它可以將原本單調的終端機日誌，轉換成帶有**彩色線圖、相對時間、作者與分支標籤**的視覺化介面。

---

## 包含的別名與效果說明

| 指令 | 說明 | 畫面特色 |
| :--- | :--- | :--- |
| `git lg1` / `git lg` | **精簡全分支日誌** (推薦?) | 單行顯示，包含縮寫 Hash、相對時間、提交訊息、作者與分支標籤。 |
| `git lg2` | **詳細雙行日誌** | 兩行顯示，額外包含完整的 RFC 2822 日期時間，適合需要精確時間戳時使用。 |
| `git lg3` | **標準線圖日誌** | Git 內建的簡要線圖模式，保留預設顏色。 |

---

## 如何使用？

你可以選擇以下兩種方式將這些設定加入到你的電腦中：

### 方法一：直接複製到 `~/.gitconfig` (推薦)
打開你的 Git 全域設定檔：
```bash
git config --global --edit

[alias]
    lg1 = log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
    lg2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
    lg3 = log --graph --abbrev-commit --decorate
    lg = !"git lg1"
```
### 方法二：使用終端機指令新增
如果你不想手動開檔案，也可以直接在終端機複製並執行以下四行指令
```bash   
git config --global alias.lg1 "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --global alias.lg2 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
git config --global alias.lg3 "log --graph --abbrev-commit --decorate"
git config --global alias.lg "!'git lg1'"
```
### 方法三：執行寫好的shell script
本專安已經把方法二的設定內容寫到shell script中
```bash
sh set_git.sh
```
