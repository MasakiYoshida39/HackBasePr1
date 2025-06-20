# 🛠 ハッカソン募集・参加マッチングアプリ

### ❗ 修正点（ToDo）

- [ ] ユーザ情報テーブルに「名前（name）」カラムを追加する
- [ ] 募集情報テーブルを作成し、投稿・表示ができるようにする
- [ ] ユーザ登録（新規会員登録）画面を作成する→DAOファイルに書き込み別の場所に置く（参考https://www.youtube.com/watch?v=DJxEDvftlL4）
- [ ] PreparedStatementを使用し検索する、理由StatementだとSQLインジェクション攻撃（悪意のあるSQLが入る）を起こる可能性があるため
- [ ] ユーザーID（PK)をデータベースに入れる
- [ ] 使用環境JDBC8.2.0
---


## ✅ アプリの目的整理

| 機能の軸         | 内容                                                                 |
|------------------|----------------------------------------------------------------------|
| ✅ 募集機能       | ハッカソンの開催者がイベントを投稿・参加者募集                      |
| ✅ 参加機能       | エンジニアが参加希望を送る・チームを組む                            |
| ✅ 交流機能       | チャットやDM、コメントで交流                                         |
| ✅ プロフィール   | スキル、GitHub、使用技術など表示                                     |
| ✅ フィルター     | 言語別・テーマ別・地域別などで探せる                                 |
| ✅ 評価 / 実績    | 過去の参加回数・レビューなども確認可能                               |

---

## 🖼️ 画面遷移図（2025年6月6日 作成）

![画面遷移図](https://github.com/user-attachments/assets/c544eaf3-e051-4d69-a689-4deeb081cfbe)

---

## 🗃️ DB設計（2025年6月6日 作成）

![DB設計](https://github.com/user-attachments/assets/15e983ca-abe2-4ae2-9aff-981c31d870d7)


---

## 🔐 ログイン方法（仮）

- メールアドレス：`メールアドレス.com`
- パスワード：`pass`

※仮ログインが可能です。ログイン後、セッションに email を保存しています。

---

### ❗ 参考
- [ ] https://www.youtube.com/watch?v=BRylnpv7Pdk（ユーザー編集画面作成）
