# naronovel-fetch
『小説家になろう』の小説全文を取得する。

## 『小説家になろう』について
[『小説家になろう』](https://syosetu.com/)とはウェブ小説を掲載している小説投稿サイトであり、色んな面白い小説が無料で読めちゃうすごいサイトです。

## Nコードについて
Nコードとは『小説家になろう』における小説の管理番号です。Nコードは小説閲覧ページのURL`https://ncode.syosetu.com/n○○/`のｎ○○などに入っており、小説情報でも確認することができます。例えば、[『転生したらスライムだった件』](https://ncode.syosetu.com/n6316bn/)なら「n6316bn」、[『Ｒｅ：ゼロから始める異世界生活』](https://ncode.syosetu.com/n2267be/)なら「n2267be」です。

## 使い方
`fetch_novel.py`を次のように実行すれば指定の小説の全文が取得されます。なお、二回目以降の実行ではすでにローカルに保存されている部分と『小説家になろう』で公開されている部分の差分のみが取得されます。

```
python fetch_novel.py {ncode} [--reset]
````

* ncode: 取得したい小説のNコード
* --reset, -r: すでに保存されている部分をすべて破棄し、改めて全部分を取得する

## 保存場所
`fetch_novel.py`を実行すると、`fetch_novel.py`と同じディレクトリ内に指定のNコードを名前としてもつディレクトリが新たに生成され、その中に各部分がそれぞれ個別ファイルとして保存されます。

* 『Ｒｅ：ゼロから始める異世界生活』の場合

```
.
├── fetch_novel.py
└── n2267be
     ├── n2267be_1.txt
     ├── n2267be_2.txt
     :
     :
```
## docker 

```
docker build . -t naronovel-fetch
docker run -it -v {localdir}:/out naronovel-fetch n2267be
```


