# MinecraftModServer

dockerでMOD入りのMinecraft serverが立ちます

## 概要

- サーバーソフトウェアとして `mohist` を使用します
  - versionは1.12互換です
- amazonのjava8ランタイムを使用します
- セーブデータはvolumeとして保存されます

## つかいかた

- `mods` というディレクトリを切ります
- その中にmodを入れます
- `docker compose up -d` で起動
  - あとは自動的に起動します
  - 止めたくなったら `docker compose down`
- 気に入らなければコンテナ・ボリュームを削除して再実行    
