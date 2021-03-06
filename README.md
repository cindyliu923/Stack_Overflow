# Getting started

- Before installing Gemfiles, please check your bundler version by typing `bundle -v`, minimum version required is 2.0.0
- Create a file named `.env.development`, add the following lines to the file to set the environment variables

```
DB_HOST=127.0.0.1
DB_USERNAME=your_db_username
DB_PASSWORD=your_db_password
```

- Create DB

```
bin/rails db:drop db:create db:migrate db:seed
```

# User stories

1. 使用者可以創建新帳號
    * 使用者帳號欄位請包含：（* 為必填欄位）
      * 姓名 *
      * Email *
      * 密碼 *
      * 公司
      * 職稱
      * 簡介
      * 個人網站連結
      * Twitter 連結
      * GitHub 連結

2. 使用者可以登入／登出帳戶
    * 使用者不需登入就可以瀏覽問題和解答
    * 使用者需要登入才可以發表問題
    * 使用者需要登入才可以發表解答
    * 使用者註冊帳號時需要填寫姓名、Email、密碼
    * 使用者的 Email 唯一、不可重複

3. 使用者可以在其他使用者的個人頁面瀏覽以下資訊：
    * 個人頁面資訊：姓名、公司、職稱、個人網站連結、Twitter 連結、GitHub 連結
    * 已發表的問題數量
    * 已發表的解答數量
    * 獲得最多 upvote 問題的 upvote 數量
    * 獲得最多 upvote 解答的 upvote 數量
    * 獲得的 upvote 總數（問題＋解答）

4. 使用者可以瀏覽自己的個人頁面資訊

5. 使用者可以編輯自己的個人頁面資訊

6. 使用者可以發表問題
    * 發表問題的欄位請包含：（* 為必填欄位）
    * 標題 *
    * 內容 *

7. 使用者可以在首頁瀏覽問題列表
  * 在列表上的每個問題，請包含以下資訊：
    * 問題標題
    * 問題內容摘要（只摘要前 100 字）
    * 問題發問者（顯示姓名）
    * 問題發表時間
    * 問題獲得 favorite 的數量
    * 問題獲得 upvote 的數量
    * 問題獲得解答的數量

8. 使用者點選問題後可以瀏覽以下資訊：
    * 問題標題
    * 問題內容
    * 問題發問者（顯示姓名）
    * 問題發表時間
    * 問題獲得 favorite 的數量
    * 問題獲得 upvote 的數量
    * 問題獲得解答的數量
    * 顯示所有解答的列表（依照解答獲得的 upvote 數量排序）
    * 在解答列表上的每個解答，請包含以下資訊：
      * 顯示解答者（顯示姓名）
      * 解答發表時間
      * 解答獲得的 upvote 數量

9. 使用者可以 upvote 問題

10. 使用者可以對已發表的問題發表解答（一個文字輸入欄位）

11. 使用者可以 upvote 其他使用者的解答

12. 使用者可以 favorite 問題

13. 使用者可以在一個獨立的頁面瀏覽 favorite 問題的列表

## 進階挑戰區

1. 使用者可以使用 GitHub 帳號登入

2. 使用者可以發表問題時，新增「hashtag」（如：#Rails）
    * 每個問題最多新增 3 個 hashtag
    * 使用「#」井字號作為 hashtag 的開頭
    * hashtag 文字長度不超過 10 個字
    * hashtag 只能包含文字，不包含空格或其他特殊字元（如：_、*、?）

3. 使用者可以使用 hashtag 來查詢問題
    * 一次只能搜尋 1 個 hashtag
    * 搜尋結果頁面會顯示所有包含此 hashtag 的問題列表

4. 新增 admin 身份
    * admin 可以刪除使用者
    * admin 可以編輯使用者的個人頁面資訊
    * admin 可以一鍵重設使用者的密碼
    * admin 可以刪除任何問題或解答
