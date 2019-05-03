@memberships.each do |membership|
  json.set! membership.user_id do
    json.partial! 'membership', membership: membership
  end
end
