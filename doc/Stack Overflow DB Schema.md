# Stack Overflow DB Schema

###### 更新日期：2019-01-30 (規劃 DB Schema 與 Model 之間的關聯)

## User

| Field              | Required | Type     | Description  |
|--------------------|----------|----------|--------------|
| name               | Yes      | string   | 姓名         |
| email              | Yes      | string   | 電子信箱     |
| encrypted_password | Yes      | string   | 密碼         |
| company            | No       | string   | 公司名稱     |
| job_title          | No       | string   | 職稱         |
| introduction       | No       | string   | 簡介         |
| personal_website   | No       | string   | 個人網站連結 |
| twitter_link       | No       | string   | Twitter 連結 |
| github_link        | No       | string   | GitHub 連結  |

## Question

| Field      | Required | Type     | Description  |
|------------|----------|----------|--------------|
| title      | Yes      | string   | 標題         |
| content    | Yes      | Text     | 內容         |
| user_id    | Yes      | integer  | 發問者       |

## Answer

| Field       | Required | Type    | Description    |
|-------------|----------|---------|----------------|
| content     | Yes      | Text    | 內容           |
| user_id     | Yes      | integer | 答題者         |
| question_id | Yes      | integer | 回答哪一個問題 |

## Upvote (認同)

| Field        | Required | Type    | Description          |
|--------------|----------|---------|----------------------|
| user_id      | Yes      | integer | 認同者的 ID         |
| upvoteable_type | Yes      | string  | 認同哪一個問題或回答 |
| upvoteable_id   | Yes      | integer | 此問題或回答的 ID    |

### 備註
1. 當你認為這個發問者提問了個好問題時，就按個 Upvote (給發問者一個讚的意思，是正向的回饋)
2. 當你認為這個答題者回答的很棒時，就按個 Upvote (給發問者一個讚的意思，是正向的回饋)
3. 類似 FB 的按讚功能，可以同時對發文者的文章跟某個回覆按讚一樣


## Favorite

| Field       | Required | Type    | Description    |
|-------------|----------|---------|----------------|
| user_id     | Yes      | integer | 收藏者的 ID     |
| question_id | Yes      | integer | 喜歡哪一個問題   |

### 備註
1. Favorite 類似書籤的功能，也可以理解為收藏，當你覺得這個問題對你有用且之後會想要再來看這篇的所有問答時，就對這個問題按個 "Favorite"，把它收藏起來！
