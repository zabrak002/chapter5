class AsyncLogJob < ApplicationJob
  queue_as :async_log do
    case self.arguments.first[:message]
    when "to async_log"
      :async_log
    else
      :default
    end
  end

  # jobのリトライ
  retry_on StandardError, wait: 5.seconds, attempts: 3
  # jobの破棄
  # discard_on StandardError do |job, error|
  #  SomeNotifier.push(error)
  # end

  def perform(message: "hello")
    AsyncLog.create!(message: message)
  end
end
