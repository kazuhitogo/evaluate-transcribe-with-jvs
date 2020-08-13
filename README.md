# evaluate-transcribe-with-jvs

# 概要
* Amazon Transcribe の文字起こし結果のWERを算出する
* 使用するデータはこちら
https://sites.google.com/site/shinnosuketakamichi/research-topics/jvs_corpus

# 事前に必要なこと
* S3 のバケットを2つ作成する
  * 音声ファイル配置用
  * transcribe の処理結果出力用
* これらのスクリプトを実行できるIAMユーザ/IAMロールの設定
  * Transcribeの権限
  * S3 の権限
