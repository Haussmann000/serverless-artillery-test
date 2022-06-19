# serverless-artillery-test

## 概要
- serverless-artilleryをDockerで使えるようにした

## 使い方
- https://github.com/Nordstrom/serverless-artillery-workshop/blob/master/README.md

### 準備
- 使用しているユーザーで`aws configure`でIAMキーとシークレットキーを設定してください
  - https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/cli-configure-quickstart.html
- 環境変数に以下を指定

```
AWS_ACCESS_KEY_ID='your_access_key'
AWS_SECRET_ACCESS_KEY='your_secrete_key'
```


- `script.yml`を編集してください




### 実行
- このリポジトリをクローンして、下記を実行してください
  - `docker compose build slsart`
  - `docker compose run --rm slsart deploy`
  - `docker compose run --rm slsart invoke`
- 終了したら下記で一式を削除してください
  - `docker compose run --rm slsart remove`


