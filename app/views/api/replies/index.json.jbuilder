@replies.each do |reply|
  json.set! reply.id do
    json.partial! 'reply', reply: reply
  end
end
