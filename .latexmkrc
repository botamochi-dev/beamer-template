# LaTeX Workshop / latexmk の設定

$emulate_aux = 1;        # TeX Liveなど中間ディレクトリをネイティブでサポートしていない場合の対応
$out_dir = 'out';        # 最終的なPDF出力先
$aux_dir = 'build';      # 中間ファイルの出力先

$pdflatex = 'lualatex %O -interaction=nonstopmode -synctex=1 -file-line-error %S';

# 基本設定
$pdf_mode = 1;
$bibtex = 'pbibtex';
$makeindex = 'upmendex %O -o %D %S';
$ENV{TZ} = 'Asia/Tokyo';
$max_repeat = 5;