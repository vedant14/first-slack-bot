# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'AdminEmoji methods.'
command 'admin_emoji' do |g|
  g.desc 'Add an emoji.'
  g.long_desc %( Add an emoji. )
  g.command 'add' do |c|
    c.flag 'name', desc: 'The name of the emoji to be added. Colons (:myemoji:) around the value are not required, although they may be included.'
    c.flag 'url', desc: 'The URL of a file to use as an image for the emoji. Square images under 128KB and with transparent backgrounds work best.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_emoji_add(options))
    end
  end

  g.desc 'Add an emoji alias.'
  g.long_desc %( Add an emoji alias. )
  g.command 'addAlias' do |c|
    c.flag 'alias_for', desc: 'The alias of the emoji.'
    c.flag 'name', desc: 'The name of the emoji to be aliased. Colons (:myemoji:) around the value are not required, although they may be included.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_emoji_addAlias(options))
    end
  end

  g.desc 'List emoji for an Enterprise Grid organization.'
  g.long_desc %( List emoji for an Enterprise Grid organization. )
  g.command 'list' do |c|
    c.flag 'cursor', desc: 'Set cursor to next_cursor returned by the previous call to list items in the next page.'
    c.flag 'limit', desc: 'The maximum number of items to return. Must be between 1 - 1000 both inclusive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_emoji_list(options))
    end
  end

  g.desc 'Remove an emoji across an Enterprise Grid organization'
  g.long_desc %( Remove an emoji across an Enterprise Grid organization )
  g.command 'remove' do |c|
    c.flag 'name', desc: 'The name of the emoji to be removed. Colons (:myemoji:) around the value are not required, although they may be included.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_emoji_remove(options))
    end
  end

  g.desc 'Rename an emoji.'
  g.long_desc %( Rename an emoji. )
  g.command 'rename' do |c|
    c.flag 'name', desc: 'The name of the emoji to be renamed. Colons (:myemoji:) around the value are not required, although they may be included.'
    c.flag 'new_name', desc: 'The new name of the emoji.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_emoji_rename(options))
    end
  end
end
