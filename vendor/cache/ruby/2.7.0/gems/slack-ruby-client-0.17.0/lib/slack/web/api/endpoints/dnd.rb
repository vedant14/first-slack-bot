# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Dnd
          #
          # Ends the current user's Do Not Disturb session immediately.
          #
          # @see https://api.slack.com/methods/dnd.endDnd
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/dnd/dnd.endDnd.json
          def dnd_endDnd(options = {})
            post('dnd.endDnd', options)
          end

          #
          # Ends the current user's snooze mode immediately.
          #
          # @see https://api.slack.com/methods/dnd.endSnooze
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/dnd/dnd.endSnooze.json
          def dnd_endSnooze(options = {})
            post('dnd.endSnooze', options)
          end

          #
          # Retrieves a user's current Do Not Disturb status.
          #
          # @option options [Object] :team_id
          #   Encoded team id where passed in user param belongs, required if org token is used. If no user param is passed, then a team which has access to the app should be passed.
          # @option options [user] :user
          #   User to fetch status for (defaults to current user).
          # @see https://api.slack.com/methods/dnd.info
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/dnd/dnd.info.json
          def dnd_info(options = {})
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('dnd.info', options)
          end

          #
          # Turns on Do Not Disturb mode for the current user, or changes its duration.
          #
          # @option options [Object] :num_minutes
          #   Number of minutes, from now, to snooze until.
          # @see https://api.slack.com/methods/dnd.setSnooze
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/dnd/dnd.setSnooze.json
          def dnd_setSnooze(options = {})
            throw ArgumentError.new('Required arguments :num_minutes missing') if options[:num_minutes].nil?
            post('dnd.setSnooze', options)
          end

          #
          # Retrieves the Do Not Disturb status for up to 50 users on a team.
          #
          # @option options [Object] :users
          #   Comma-separated list of users to fetch Do Not Disturb status for.
          # @option options [Object] :team_id
          #   Encoded team id where passed in users belong, required if org token is used.
          # @see https://api.slack.com/methods/dnd.teamInfo
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/dnd/dnd.teamInfo.json
          def dnd_teamInfo(options = {})
            throw ArgumentError.new('Required arguments :users missing') if options[:users].nil?
            post('dnd.teamInfo', options)
          end
        end
      end
    end
  end
end
