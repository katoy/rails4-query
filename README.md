
1. Active Record クエリインターフェイス
=====================================

ActiveRecord でのデータ検索についての↓にある解説ページの内容を試す。(作業途中...)  


See
- [http://railsguides.jp/active_record_querying.html](http://railsguides.jp/active_record_querying.html)  
> Railsguides Active Record クエリインターフェイス

- [https://github.com/johnfig/teachers_pet/blob/master/db%2Fseeds.rb](https://github.com/johnfig/teachers_pet/blob/master/db%2Fseeds.rb)  
> This is an exercise to teach me about many-to-many relationships

次のコマンドでいろいろな query の方法とその結果を見ることができる。

    $ rails runner sample.rb


1. Getting started
------------------

    $ rake db:drop
    $ rake db:drop
    $ rale db:seed

    $ rails c

2. find
-----
    > client = Client.find(1)
    Client Load (0.2ms)  SELECT  "clients".* FROM "clients" WHERE "clients"."id" = ? LIMIT 1  [["id", 1]]
    +----+------------+-----------+-------------------------+-------------------------+
    | id | first_name | last_name | created_at              | updated_at              |
    +----+------------+-----------+-------------------------+-------------------------+
    | 1  | Ryan       |           | 2015-12-21 15:14:31 UTC | 2015-12-21 15:14:31 UTC |
    +----+------------+-----------+-------------------------+-------------------------+
    1 row in set

    > clients = Client.find([1, 3])
    Client Load (0.3ms)  SELECT "clients".* FROM "clients" WHERE "clients"."id" IN (1, 3)
    +----+------------+-----------+-------------------------+-------------------------+
    | id | first_name | last_name | created_at              | updated_at              |
    +----+------------+-----------+-------------------------+-------------------------+
    | 1  | Ryan       |           | 2015-12-21 15:14:31 UTC | 2015-12-21 15:14:31 UTC |
    | 3  | Sara       |           | 2015-12-21 15:14:31 UTC | 2015-12-21 15:14:31 UTC |
    +----+------------+-----------+-------------------------+-------------------------+
    2 rows in set

    > clients = Client.find([1, 3, 999999])
    Client Load (0.3ms)  SELECT "clients".* FROM "clients" WHERE "clients"."id" IN (1, 3, 999999)
    ActiveRecord::RecordNotFound: Couldn't find all Clients with 'id': (1, 3, 999999) (found 2 results, but was looking for 3)

3. take
-----
