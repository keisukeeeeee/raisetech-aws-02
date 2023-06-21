## AWS第４回講義課題

### VPC設定

![1VPC](./images/1VPC.png)

![2VPC](./images/2VPC.png)

### EC2設定

![3EC2](./images/3EC2.png)

![4EC2](./images/4EC2.png)

![5EC2](./images/5EC2.png)

### RDS設定

![6RDS](./images/6RDS.png)

![7RDS](./images/7RDS.png)

![8RDS](./images/8RDS.png)

### EC2からRDSへ接続

![9EC2-RDS](./images/9EC2-RDS.png)

### 今回の課題で学んだこと

chmod 600 〈キーペア〉：セキュリティレベルを上げるため

ssh 〈ユーザー名〉@〈EC2パブリックIP〉 -i 〈キーペア〉：ターミナルでEC2に接続

sudo yum update：アップデートが必要だったため

ping 〈RDSエンドポイント〉：接続できているか確認したかったがchatGPTによるとあまり意味がないとのこと

sudo yum install mysql：mysqlがインストールされていなかったため

mysql -u 〈マスターユーザー名〉 -p -h 〈RDSエンドポイント〉：RDSインスタンスに接続

SHOW DATABASES：データベース一覧の表示（mysql内コマンド）

status:ステータス表示（mysql内コマンド）


