
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
===================

    $ rake db:drop
    $ rake db:drop
    $ rale db:seed

    $ rails c

rails c のコンソールで ruby の文を入れて試していくことができる。

しかし、$ rails runnder saample.rb で予め入力したおいた ruby コードを実行することもできる。

1. データベースからオブジェクトを取り出す
-----------------------------------
* 単一のオブジェクトを取り出す
* 複数のオブジェクトをバッチで取り出す

2. 条件
-------
* 文字列だけで表された条件
* 配列で表された条件
* ハッシュを使用した条件
* NOT条件

3. 並び順
---------

4. 特定のフィールドだけを取り出す
----------------------------

5. LimitとOffset
----------------

6. グループ
----------
* グループ化された項目の合計

7. Having
---------

8. 条件を上書きする
-----------------
* unscope
* only
* reorder
* reverse_order
* rewhere

9. Nullリレーション
------------------

10. 読み取り専用オブジェクト
------------------------

11. レコードを更新できないようロックする
----------------------------------
* 楽観的ロック (optimistic)
* 悲観的ロック (pessimistic)

12. テーブルを結合する
-------------------
* SQLフラグメント文字列を使用する
* 名前付き関連付けの配列/ハッシュを使用する
* 結合されたテーブルで条件を指定する

13. 関連付けを一括読み込みする
---------------------------
* 複数の関連付けを一括で読み込む
* 関連付けの一括読み込みで条件を指定する

14. スコープ
-----------
* 引数を渡す
* デフォルトスコープを適用する
* スコープのマージ
* すべてのスコープを削除する
* 動的ファインダ

15. メソッドチェインを理解する
---------------------------
* 複数のテーブルからのデータをフィルタして取得する
* 複数のテーブルから特定のデータを取得する

16. 新しいオブジェクトを検索またはビルドする
--------------------------------------
* find_or_create_by
* find_or_create_by!
* find_or_initialize_by

17. SQLで検索する
----------------
* select_all
* pluck
* ids

18. オブジェクトの存在チェック
--------------------------

19. 計算
--------
* 個数を数える
* 平均
* 最小値
* 最大値
* 合計

20. EXPLAINを実行する
--------------------
* EXPLAINの出力結果を解釈する
