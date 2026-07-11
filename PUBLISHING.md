# 公開ステータス

## Web (完了)
- 公開URL: https://ko-ichiba.github.io/when_to_review/
- pushするたびにGitHub Actions ([.github/workflows/deploy.yml](.github/workflows/deploy.yml)) が自動ビルド・デプロイ
- プライバシーポリシー: https://ko-ichiba.github.io/when_to_review/privacy.html

## Android (Play Console提出待ち)

ここから先はGoogleアカウントでのログインが必要なため、ご自身での作業になります。

### 準備済みのもの
- 署名済みAAB: `build/app/outputs/bundle/release/app-release.aab`(`flutter build appbundle --release`で再生成可能)
- applicationId: `com.koichiba.when_to_review`
- ストア掲載文の下書き: [store_listing.md](store_listing.md)
- プライバシーポリシーURL: 上記参照

### Play Consoleでの手順
1. https://play.google.com/console を開き、招待された koichiba@gmail.com アカウントでログイン
2. 「アプリを作成」→ アプリ名「今日の復習」、デフォルト言語:日本語、アプリ/ゲーム:アプリ、無料
3. 「ストアの掲載情報」に [store_listing.md](store_listing.md) の内容を転記
4. スクリーンショットをアップロード(下記「スクリーンショットについて」参照)
5. アイコンは自動的にAABから取得されるので追加アップロード不要
6. 「アプリのコンテンツ」で以下に回答:
   - プライバシーポリシー: 上記URLを入力
   - データセーフティ: 「データを収集しない」を選択(本アプリはネット通信・データ保存を一切行わないため)
   - コンテンツのレーティング: アンケートに回答(暴力・課金・広告等すべて「なし」)
   - 対象年齢層 / 広告の有無: 広告なしを選択
7. 「本番環境」トラックで新しいリリースを作成し、`app-release.aab` をアップロード
8. 審査に提出

### スクリーンショットについて
Android実機・エミュレータがこの環境になかったため、実際のアプリ画面のスクリーンショットは撮影できていません。以下のいずれかで用意してください。
- Android Studioのエミュレータでアプリを起動し、スクリーンショットを撮る(`flutter run`後、エミュレータのカメラボタン)
- お手持ちの実機に `app-release.aab` を(bundletool経由で)インストールして撮影
- 上記WebのURLをスマートフォンのブラウザで開いて撮影(UIはFlutterで共通のため実質同じ見た目)

最低2枚、推奨1080x1920以上の縦長画像が必要です。
