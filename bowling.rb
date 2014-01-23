class Game
#array values = pins knocked over

	def score(roll_ary)

		frame_score_ary = []
		i = 0
		frame = 0

		#perfect case

		while frame <= 9
			if frame == 9
				#last frame
				if roll_ary[i] == 10 #strike
					frame_score_ary[frame] = roll_ary[i] + roll_ary[i+1].to_i  + roll_ary[i+2].to_i
					#final_score(frame_score_ary)
				elsif roll_ary[i] == 0 #gutter
					frame_score_ary[frame] = 0
					#final_score(frame_score_ary)
		 		elsif (roll_ary[i].to_i + roll_ary[i+1].to_i < 10) #open frame
		 			frame_score_ary[frame] = roll_ary[i].to_i + roll_ary[i+1].to_i
		 			#final_score(frame_score_ary)
		 		elsif (roll_ary[i] + roll_ary[i+1] == 10) #spare
		 			frame_score_ary[frame] = roll_ary[i] + roll_ary[i+1] + roll_ary[i+2]
		 			final_score(frame_score_ary)
				end

			elsif frame < 9
				#previous frame handling
				if roll_ary[i] == 10 #strike
					frame_score_ary[frame] = roll_ary[i] + roll_ary[i+1] + roll_ary[i+2]
					i += 1
				elsif roll_ary[i] == 0 #gutter
					frame_score_ary[frame] = 0
					i += 1
		 		elsif (roll_ary[i].to_i + roll_ary[i+1].to_i < 10) #open frame
		 			frame_score_ary[frame] = roll_ary[i].to_i + roll_ary[i+1].to_i
		 			i += 2
		 		elsif (roll_ary[i] + roll_ary[i+1] == 10) #spare
		 			frame_score_ary[frame] = roll_ary[i] + roll_ary[i+1] + roll_ary[i+2]
		 			i += 2
				end
			end
			frame += 1
		end
	final_score(frame_score_ary)
	end

	def final_score(frame_score_ary)
		score = 0
		frame_score_ary.each do |s|
				score = score + s
			end
			return score
	end
end

