json.meeting_count @meetings.count
json.meetings @meetings do |meeting|
	json.id meeting.id
	json.agenda meeting.agenda
	json.scribe meeting.scribe.name
	json.scribe_email meeting.scribe.email
	json.participant_count meeting.meeting_participants.count
	json.participants meeting.meeting_participants do |participant|
		json.participant_email participant.user.email	
	end
end



