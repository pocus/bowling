class Game

	def score(roll_ary)
		frame_score_ary = []
		i = 0
		frame = 0

		while frame <= 9
				if roll_ary[i] == 10 #strike
					frame_score_ary[frame] = roll_ary[i] + roll_ary[i+1]  + roll_ary[i+2]
					i += 1 if frame < 9

				elsif roll_ary[i] == 0 #gutter
					frame_score_ary[frame] = 0
					i += 1 if frame < 9

		 		elsif (roll_ary[i] + roll_ary[i+1] < 10) #open frame
		 			frame_score_ary[frame] = roll_ary[i] + roll_ary[i+1]
		 			i += 2 if frame < 9

		 		elsif (roll_ary[i] + roll_ary[i+1] == 10) #spare
		 			frame_score_ary[frame] = roll_ary[i] + roll_ary[i+1] + roll_ary[i+2]
		 			i += 2 if frame < 9

				end
			frame += 1
		end

		final_score(frame_score_ary)
	end

	def final_score(frame_score_ary)
		score = 0
		frame_score_ary.each { |s| score = score + s}
		score
	end

end