# 歳徳神社（栃木県宇都宮市）ご案内サイト

栃木県宇都宮市富士見ヶ丘にある歳徳神社のご案内サイトのソースコードです。GitHub Pages（Jekyll）で公開しています。

※ 歳徳神社は全国各地にそれぞれ独立した宮司のもとで運営されており、本サイトは特定の一社（栃木県宇都宮市）のご案内サイトです。「公式」という表記は使用していません。

## ディレクトリ構成

```
saitoku-shrine_hp/
├── _config.yml         サイト全体の設定（タイトル、メニューなど）
├── Gemfile              ローカルプレビュー用（任意）
├── _layouts/
│   ├── default.html     全ページ共通のレイアウト（ヘッダー・フッター）
│   └── post.html        お知らせ記事用のレイアウト
├── _includes/
│   ├── header.html       共通ヘッダー
│   └── footer.html       共通フッター
├── _posts/               お知らせ記事（Markdown）※更新はここに追加するだけ
├── assets/
│   ├── css/style.css     デザイン（レスポンシブ対応）
│   ├── images/           写真・画像
│   └── js/                必要になった場合のJS置き場（現状未使用）
├── index.md              トップページ（由緒・アクセス概要）
├── access.md             参拝時間・アクセス詳細ページ
└── news.html              お知らせ一覧ページ（_posts を自動的に一覧表示）
```

## お知らせを更新する方法（非エンジニアの方向け）

1. `_posts` フォルダに新しいファイルを作成します。
2. ファイル名は必ず `YYYY-MM-DD-好きなタイトル.md` の形式にしてください。
   例：`2026-07-01-natsumatsuri-2026.md`
3. ファイルの中身は、既存の記事（例: [`_posts/2026-01-01-hatsumode-2026.md`](_posts/2026-01-01-hatsumode-2026.md)）をコピーして、以下を書き換えます。

   ```markdown
   ---
   layout: post
   title: "タイトルをここに書く"
   date: 2026-07-01
   ---

   本文をここに書きます。
   ```

4. ファイルを保存し、GitHubにアップロード（コミット・プッシュ、またはGitHub上の「Add file」）します。
5. 数分待つと、サイトの「お知らせ」ページに自動的に反映されます。

記事を削除したい場合は、該当の `.md` ファイルを `_posts` フォルダから削除してください。

## GitHub Pages の公開設定（初回のみ）

1. このリポジトリを GitHub の `shrine31109-coder/saitoku-shrine_hp` にプッシュします。
2. GitHubのリポジトリ画面で **Settings → Pages** を開きます。
3. "Build and deployment" の Source を **Deploy from a branch** に設定し、
   Branch を `main` / `/(root)` に設定して保存します。
4. 数分後、`https://shrine31109-coder.github.io/saitoku-shrine_hp/` で公開されます。

## 検索結果の「GitHub Pages documentation」を変更する

検索結果のURLの上に出る文字は、Googleが自動選択する「サイト名」です。
このサイトでは既に `jekyll-seo-tag` が「歳徳神社」の `og:site_name` と
`WebSite` 構造化データを出力しています。しかし、Googleはサブディレクトリ
（`/saitoku-shrine_hp/`）単位のサイト名には対応していません。
ドメイン直下 `https://shrine31109-coder.github.io/` にも神社の情報を公開します。

公開用ファイルを [`deployment/domain-root/`](deployment/domain-root/) に用意しています。
「歳徳神社」のサイト名・構造化データ・アイコン指定を含む案内ページです。
既存サイトのURLを維持し、案内ページから各ページへ移動できます。

1. GitHubの `shrine31109-coder` アカウントで、公開リポジトリ
   `shrine31109-coder.github.io` を作成します。既に存在する場合は現在の内容と用途を確認し、
   他のサイトを運用している場合は上書きしないでください。
2. `deployment/domain-root/` 内の `index.html` と `.nojekyll` を、
   **そのリポジトリの直下**へ配置してコミットします。
3. そのリポジトリの **Settings → Pages** で **Deploy from a branch**、
   `main` / `/(root)` を選択します。
4. `https://shrine31109-coder.github.io/` を開き、「歳徳神社」の案内ページが表示されること、
   案内・アクセス・お知らせへのリンクとアイコンが取得できることを確認します。
5. Google Search Consoleでドメイン直下のURLを検査し、インデックス登録をリクエストします。
   既存のURLプレフィックスプロパティが `/saitoku-shrine_hp/` のみの場合は、
   ドメイン直下用のURLプレフィックスプロパティを追加・所有権確認してください。
   HTMLファイルで確認する場合は、Search Consoleから指定された確認ファイルを
   新しいリポジトリの直下に配置します。

このリポジトリだけをプッシュしても、ドメイン直下のページは公開されません。
`deployment/` は既存サイトのビルド対象から除外しています。
自動転送は設定せず、Googleが読み取れる案内ページとして公開します。
サイト名はGoogleが最終判断するため表示は保証できず、再クロール・処理には数日～数週間かかることがあります。

参考：[Googleのサイト名の仕様](https://developers.google.com/search/docs/appearance/site-names)

## ローカルで表示を確認する方法（任意・エンジニア向け）

Rubyがインストールされている環境であれば、以下でローカルプレビューできます。

```bash
bundle install
bundle exec jekyll serve
```

`http://localhost:4000/saitoku-shrine_hp/` で確認できます。
