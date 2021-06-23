##### プロジェクト作成
% rails new active_job_example
% cd active_job_example
##### モデル作成
% bin/rails g model async_log message
% bin/rails db:create
% bin/rails db:migrate
##### ジョブ作成
% bin/rails g job async_log
##### redisインストール
% brew install redis
##### redis起動
% redis-server
##### sidekiq起動
% bundle exec sidekiq