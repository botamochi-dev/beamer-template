# TeX スライド作成環境

このリポジトリは、VS Code + LaTeX Workshop を利用して、LuaLaTeX ベースの Beamer スライドを作成するための開発環境です。

## 開発環境の構築手順

本プロジェクトでスライドをビルド・執筆するためには、お使いのPCにTeXのコンパイル環境とエディタを準備する必要があります。

### 1. TeXディストリビューションのインストール
LuaLaTeXを含むモダンなTeX環境を構築するため、OSに合わせて以下をインストールしてください。（※ フルインストールを推奨します）
- **Windows / Linux X等**: [TeX Live](https://tug.org/texlive/) をダウンロードしてインストール
- **macOS**: [MacTeX](https://tug.org/mactex/) をダウンロードしてインストール

### 2. Visual Studio Code のインストール
エディタとして [Visual Studio Code (VS Code)](https://azure.microsoft.com/ja-jp/products/visual-studio-code/) をインストールします。

### 3. 拡張機能「LaTeX Workshop」の導入
VS Codeを起動し、拡張機能（Extensions）から以下のプラグインをインストールします。
- **LaTeX Workshop** 

---

## 執筆の進め方

### 1. ファイルの編集
- `main.tex` または新たに作成した `.tex` ファイルを開き、編集を行います。
- 日本語のBeamerクラスを使用し、`luatexja` 等のサポート前提で記述されています。必要に応じてフレーム (`\begin{frame}`) を追加して執筆してください。

### 2. ビルド（コンパイル）
- **保存時自動ビルド**: `.tex` ファイルを保存（`Ctrl + S` / `Cmd + S`）すると、自動的にビルドが走ります。
- **手動ビルド**: `Ctrl + Alt + B` （Mac: `Cmd + Option + B`）を押すか、右上の「Build LaTeX project」アイコンをクリックします。

### 3. スライドのプレビュー
- `Ctrl + Alt + V` （Mac: `Cmd + Option + V`）を押すか、右上の「View LaTeX PDF」アイコンをクリックすると、VS Codeのタブ内でPDFをプレビューできます。
- PDFをスクロールするか画面上でダブルクリックすることで、対応するTeXのソースコード行にジャンプ（SyncTeX）できます。

### 4. クリーンアップと出力先
- **出力先**: 最終的なPDFファイルはすべて `out/` フォルダに出力されます。
- **中間ファイル**: コンパイル時に生成される `.aux` や `.toc` `.nav` などの中間ファイルはビルド終了後、削除されます。コンパイル時のログを記録する`.log`ファイルのみ `build/` フォルダに格納され、ルートディレクトリが散らからないようになっています。

---

## 主なディレクトリ構成

```text
/
├── main.tex           # スライドのメインソースファイル
├── .latexmkrc         # latexmkのビルドプロセス設定（LuaLaTeX等の指定）
├── .vscode/
│   └── settings.json  # VS CodeとLaTeX Workshopのワークスペース設定
├── build/             # 中間ファイル (.log) の出力先
├── out/               # 完成したPDFの出力先
├── docs/              # ドキュメント等の一時保存用フォルダ
└── README.md          # このファイル
```