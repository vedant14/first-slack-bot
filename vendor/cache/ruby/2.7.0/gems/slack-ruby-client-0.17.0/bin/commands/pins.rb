# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'Pins methods.'
command 'pins' do |g|
  g.desc 'Pins an item to a channel.'
  g.long_desc %( Pins an item to a channel. )
  g.command 'add' do |c|
    c.flag 'channel', desc: 'Channel to pin the item in.'
    c.flag 'timestamp', desc: 'Timestamp of the message to pin.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.pins_add(options))
    end
  end

  g.desc 'Lists items pinned to a channel.'
  g.long_desc %( Lists items pinned to a channel. )
  g.command 'list' do |c|
    c.flag 'channel', desc: 'Channel to get pinned items for.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.pins_list(options))
    end
  end

  g.desc 'Un-pins an item from a channel.'
  g.long_desc %( Un-pins an item from a channel. )
  g.command 'remove' do |c|
    c.flag 'channel', desc: 'Channel where the item is pinned to.'
    c.flag 'timestamp', desc: 'Timestamp of the message to un-pin.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.pins_remove(options))
    end
  end
end