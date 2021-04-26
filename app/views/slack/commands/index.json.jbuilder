json.blocks @meetings do |meeting|
	json.type "section"
	json.text do
		json.type "mrkdwn"
		json.text " #{meeting.agenda} \n Attended by: #{meeting.attendee_content} \n Discussions: \n•#{meeting.discussion_content}"
	end
end