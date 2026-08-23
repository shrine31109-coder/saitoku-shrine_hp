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

## ローカルで表示を確認する方法（任意・エンジニア向け）

Rubyがインストールされている環境であれば、以下でローカルプレビューできます。

```bash
bundle install
bundle exec jekyll serve
```

`http://localhost:4000/saitoku-shrine_hp/` で確認できます。
