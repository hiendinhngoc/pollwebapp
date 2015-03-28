module PollsHelper
	def visualize_votes_for(option)
		content_tag :div, class: 'progress' do
			content_tag :div, class: 'progress-bar',
					style: "width: #{option.poll.normalized_votes_for(option)}%" do
				
				<%= pie_chart VoteOption.group(:title).sum("#{option.votes.count}") %>
			end
		end
	end
end
