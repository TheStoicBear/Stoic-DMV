-- Define the questions and answers
local questions = {
    {--"What should you do if your car's engine overheats?",
        question = "What should you do if your car's engine overheats?",
        options = {
            { value = "turn_off", label = "Turn off the engine and wait for it to cool down" },
            { value = "cold_water", label = "Pour cold water on the engine" },
            { value = "keep_driving", label = "Keep driving until you reach a mechanic" }
        },
        correctOption = "turn_off" -- Value of correct option
    },
    {--"When approaching a pedestrian crossing, what should you do?",
        question = "When approaching a pedestrian crossing, what should you do?",
        options = {
            { value = "slow_down", label = "Slow down and be prepared to stop" },
            { value = "speed_up", label = "Speed up to pass quickly" },
            { value = "ignore_pedestrians", label = "Ignore pedestrians and continue driving" }
        },
        correctOption = "slow_down" -- Value of correct option
    },
    {--"What does a yellow traffic light mean?",
        question = "What does a yellow traffic light mean?",
        options = {
            { value = "slow_down", label = "Slow down and prepare to stop" },
            { value = "proceed_with_caution", label = "Proceed with caution" },
            { value = "stop", label = "Stop immediately" }
        },
        correctOption = "proceed_with_caution" -- Value of correct option
    },
    {--"What does a red traffic light mean?",
        question = "What does a red traffic light mean?",
        options = {
            { value = "stop", label = "Stop" },
            { value = "go", label = "Go" },
            { value = "yield", label = "Yield" }
        },
        correctOption = "stop" -- Value of correct option
    },
    {--"What should you do when you see a yield sign?",
        question = "What should you do when you see a yield sign?",
        options = {
            { value = "slow_down_and_yield", label = "Slow down and yield to traffic" },
            { value = "speed_up", label = "Speed up and try to merge quickly" },
            { value = "ignore_yield_sign", label = "Ignore the yield sign and proceed" }
        },
        correctOption = "slow_down_and_yield" -- Value of correct option
    },
    {--"What should you do when approaching a sharp curve?",
        question = "What should you do when approaching a sharp curve?",
        options = {
            { value = "slow_down", label = "Slow down before entering the curve" },
            { value = "accelerate", label = "Accelerate to maintain speed" },
            { value = "close_your_eyes", label = "Close your eyes and hope for the best" }
        },
        correctOption = "slow_down" -- Value of correct option
    },
    {--"What does a flashing red traffic light mean?",
        question = "What does a flashing red traffic light mean?",
        options = {
            { value = "stop", label = "Stop" },
            { value = "yield", label = "Yield" },
            { value = "proceed_with_caution", label = "Proceed with caution" }
        },
        correctOption = "stop" -- Value of correct option
    },
    {--"What should you do if your vehicle starts to skid?"
        question = "What should you do if your vehicle starts to skid?",
        options = {
            { value = "steer_in_direction_of_skid", label = "Steer in the direction of the skid" },
            { value = "steer_opposite_direction", label = "Steer in the opposite direction of the skid" },
            { value = "press_gas_pedal_harder", label = "Press the gas pedal harder" }
        },
        correctOption = "steer_in_direction_of_skid" -- Value of correct option
    },
    {--"What is the purpose of a crosswalk?"
        question = "What is the purpose of a crosswalk?",
        options = {
            { value = "allow_pedestrians_to_cross_safely", label = "Allow pedestrians to cross safely" },
            { value = "park_vehicles", label = "Park vehicles" },
            { value = "race_with_friends", label = "Race with friends" }
        },
        correctOption = "allow_pedestrians_to_cross_safely" -- Value of correct option
    },
    {--"What should you do if you miss your exit on the highway?",
        question = "What should you do if you miss your exit on the highway?",
        options = {
            { value = "continue_to_next_exit", label = "Continue to the next exit" },
            { value = "reverse_on_the_highway", label = "Reverse on the highway" },
            { value = "stop_and_wait_for_help", label = "Stop and wait for help" }
        },
        correctOption = "continue_to_next_exit" -- Value of correct option
    },
    {--"What is the purpose of a stop sign?",
        question = "What is the purpose of a stop sign?",
        options = {
            { value = "stop", label = "Stop completely before proceeding" },
            { value = "slow_down", label = "Slow down and proceed without stopping" },
            { value = "ignore_sign", label = "Ignore the sign and proceed" }
        },
        correctOption = "stop" -- Value of correct option
    },
    {--"What should you do if your tire blows out while driving?",
        question = "What should you do if your tire blows out while driving?",
        options = {
            { value = "keep_driving", label = "Keep driving until you reach a service station" },
            { value = "brake_hard", label = "Brake hard to stop the vehicle" },
            { value = "steer_steadily", label = "Grip the steering wheel firmly and steer steadily" }
        },
        correctOption = "steer_steadily" -- Value of correct option
    },
    {--"What should you do if your headlights suddenly go out while driving at night?",
        question = "What should you do if your headlights suddenly go out while driving at night?",
        options = {
            { value = "flash_high_beams", label = "Flash high beams to alert other drivers" },
            { value = "drive_slowly", label = "Drive slowly until you can stop safely" },
            { value = "turn_on_hazard_lights", label = "Turn on hazard lights and pull over" }
        },
        correctOption = "turn_on_hazard_lights" -- Value of correct option
    },
    {--"What does a white painted curb mean?",
        question = "What does a white painted curb mean?",
        options = {
            { value = "loading_zone", label = "Loading zone" },
            { value = "parking_allowed", label = "Parking allowed" },
            { value = "no_stopping_or_parking", label = "No stopping or parking" }
        },
        correctOption = "loading_zone" -- Value of correct option
    },
    {--"What should you do if your vehicle starts hydroplaning on wet roads?",
        question = "What should you do if your vehicle starts hydroplaning on wet roads?",
        options = {
            { value = "brake_hard", label = "Brake hard to regain control" },
            { value = "steer_in_direction_of_skid", label = "Steer in the direction of the skid" },
            { value = "accelerate", label = "Accelerate to gain traction" }
        },
        correctOption = "steer_in_direction_of_skid" -- Value of correct option
    },
    {--"What should you do when approaching a blind intersection?",
        question =    "What should you do when approaching a blind intersection?",
        options = {
            { value = "honk_horn", label = "Honk your horn before proceeding" },
            { value = "proceed_with_caution", label = "Proceed with caution" },
            { value = "speed_up", label = "Speed up to clear the intersection quickly" }
        },
        correctOption = "proceed_with_caution" -- Value of correct option
    },
    {--"What should you do if your vehicle's accelerator becomes stuck?",
        question = "What should you do if your vehicle's accelerator becomes stuck?",
        options = {
            { value = "panic_and_brake", label = "Panic and slam on the brakes" },
            { value = "turn_off_ignition", label = "Turn off the ignition" },
            { value = "shift_to_neutral", label = "Shift to neutral and safely pull over" }
        },
        correctOption = "shift_to_neutral" -- Value of correct option
    },
    {--"What does a solid yellow line on the road indicate?",
        question = "What does a solid yellow line on the road indicate?",
        options = {
            { value = "no_passing", label = "No passing" },
            { value = "passing_allowed", label = "Passing allowed" },
            { value = "yield_to_pedestrians", label = "Yield to pedestrians" }
        },
        correctOption = "no_passing" -- Value of correct option
    },
    {--"What should you do if you witness a traffic accident?",
        question = "What should you do if you witness a traffic accident?",
        options = {
            { value = "stop_and_help", label = "Stop and render aid if possible" },
            { value = "drive_away", label = "Drive away and ignore the accident" },
            { value = "take_pictures", label = "Take pictures and post them on social media" }
        },
        correctOption = "stop_and_help" -- Value of correct option
    },
    {--"What should you do if you encounter a school bus with flashing red lights?",
        question = "What should you do if you encounter a school bus with flashing red lights?",
        options = {
            { value = "stop_and_wait", label = "Stop and wait until the lights stop flashing" },
            { value = "drive_around", label = "Drive around the bus quickly" },
            { value = "ignore_lights", label = "Ignore the lights and keep driving" }
        },
        correctOption = "stop_and_wait" -- Value of correct option
    },
    {--"What does a green traffic light indicate?",
        question = "What does a green traffic light indicate?",
        options = {
            { value = "go", label = "Go if the intersection is clear" },
            { value = "prepare_to_stop", label = "Prepare to stop" },
            { value = "speed_up", label = "Speed up to make the light" }
        },
        correctOption = "go" -- Value of correct option
    },
    {--"What is the purpose of a roundabout?",
        question = "What is the purpose of a roundabout?",
        options = {
            { value = "reduce_traffic_congestion", label = "Reduce traffic congestion" },
            { value = "increase_speed", label = "Increase vehicle speed" },
            { value = "perform_doughnuts", label = "Perform vehicular stunts" }
        },
        correctOption = "reduce_traffic_congestion" -- Value of correct option
    },
    {--"What should you do if your vehicle's brakes fail?",
        question = "What should you do if your vehicle's brakes fail?",
        options = {
            { value = "remain_calm", label = "Remain calm and pump the brakes" },
            { value = "brake_hard", label = "Brake hard to test the brakes" },
            { value = "panic_and_steer", label = "Panic and steer into a ditch" }
        },
        correctOption = "remain_calm" -- Value of correct option
    },
    {--"What does a diamond-shaped sign indicate?",
        question = "What does a diamond-shaped sign indicate?",
        options = {
            { value = "warning", label = "Warning" },
            { value = "construction_zone", label = "Construction zone" },
            { value = "safe_zone", label = "Safe zone" }
        },
        correctOption = "warning" -- Value of correct option
    },
    {--"What should you do if you hit a parked car?",
        question = "What should you do if you hit a parked car?",
        options = {
            { value = "leave_a_note", label = "Leave a note with your contact information" },
            { value = "drive_away", label = "Drive away and pretend it never happened" },
            { value = "wait_for_owner", label = "Wait for the owner to return" }
        },
        correctOption = "leave_a_note" -- Value of correct option
    },
    {--"What should you do if you encounter a deer on the road?",
        question = "What should you do if you encounter a deer on the road?",
        options = {
            { value = "flash_high_beams", label = "Flash high beams to scare the deer away" },
            { value = "brake_hard", label = "Brake hard to avoid hitting the deer" },
            { value = "honk_horn", label = "Honk your horn to warn the deer" }
        },
        correctOption = "brake_hard" -- Value of correct option
    },
    {--"What should you do if you are being tailgated?",
        question = "What should you do if you are being tailgated?",
        options = {
            { value = "maintain_steady_speed", label = "Maintain a steady speed and don't brake suddenly" },
            { value = "speed_up", label = "Speed up to get away from the tailgater" },
            { value = "slam_brakes", label = "Slam on your brakes to teach them a lesson" }
        },
        correctOption = "maintain_steady_speed" -- Value of correct option
    },
    {--"What should you do if you miss your exit on the highway?",
        question = "What should you do if you miss your exit on the highway?",
        options = {
            { value = "continue_to_next_exit", label = "Continue to the next exit" },
            { value = "reverse_on_the_highway", label = "Reverse on the highway" },
            { value = "stop_and_wait_for_help", label = "Stop and wait for help" }
        },
        correctOption = "continue_to_next_exit" -- Value of correct option
    },
    {--"What does a yield sign mean?",
        question = "What does a yield sign mean?",
        options = {
            { value = "yield_to_cross_traffic", label = "Yield to cross traffic" },
            { value = "stop_and_wait", label = "Stop and wait for a gap in traffic" },
            { value = "proceed_without_stopping", label = "Proceed without stopping" }
        },
        correctOption = "yield_to_cross_traffic" -- Value of correct option
    },
    {--"What should you do if your vehicle starts to hydroplane?",
        question = "What should you do if your vehicle starts to hydroplane?",
        options = {
            { value = "steer_in_direction_of_skid", label = "Steer in the direction of the skid" },
            { value = "accelerate", label = "Accelerate to gain control" },
            { value = "brake_hard", label = "Brake hard to stop the vehicle" }
        },
        correctOption = "steer_in_direction_of_skid" -- Value of correct option
    },
    {-- "What does a double solid yellow line on the road mean?",
        question = "What does a double solid yellow line on the road mean?",
        options = {
            { value = "no_passing", label = "No passing allowed" },
            { value = "passing_allowed", label = "Passing allowed" },
            { value = "yield_to_pedestrians", label = "Yield to pedestrians" }
        },
        correctOption = "no_passing" -- Value of correct option
    },
    {--"What should you do if you experience a tire blowout?",
        question = "What should you do if you experience a tire blowout?",
        options = {
            { value = "grip_steering_wheel_firmly", label = "Grip the steering wheel firmly" },
            { value = "speed_up", label = "Speed up to regain control" },
            { value = "brake_hard", label = "Brake hard to stop quickly" }
        },
        correctOption = "grip_steering_wheel_firmly" -- Value of correct option
    },
    {-- "What should you do if you witness a hit-and-run accident?",
        question = "What should you do if you witness a hit-and-run accident?",
        options = {
            { value = "report_to_authorities", label = "Report the incident to authorities" },
            { value = "ignore_and_drive_away", label = "Ignore it and drive away" },
            { value = "take_pictures_for_social_media", label = "Take pictures for social media" }
        },
        correctOption = "report_to_authorities" -- Value of correct option
    },
    {--"What should you do if your vehicle's hood suddenly flies open while driving?",
        question = "What should you do if your vehicle's hood suddenly flies open while driving?",
        options = {
            { value = "pull_over_safely", label = "Pull over safely as soon as possible" },
            { value = "continue_driving", label = "Continue driving and hold onto the steering wheel" },
            { value = "drive_faster", label = "Drive faster to reduce wind resistance" }
        },
        correctOption = "pull_over_safely" -- Value of correct option
    },
    {--"What does a dashed white line on the road indicate?",
        question = "What does a dashed white line on the road indicate?",
        options = {
            { value = "lane_change_allowed", label = "Lane change allowed" },
            { value = "no_lane_change", label = "No lane change allowed" },
            { value = "pedestrian_crossing", label = "Pedestrian crossing" }
        },
        correctOption = "lane_change_allowed" -- Value of correct option
    } -- 35 Questions
}

-- Function to open the DMV license test dialog for a specific question
function openQuestionDialog(question)
    -- Define input dialog parameters
    local heading = question.question
    local rows = {}

    -- Create a new row for the options
    local optionsRow = {
        type = 'select',
        label = "Select one",
        options = {}
    }
    -- Add each option as a select option
    for _, option in ipairs(question.options) do
        table.insert(optionsRow.options, {
            value = option.value,
            label = option.label,
            disabled = option.disabled or false
        })
    end
    -- Add the options row to the dialog
    table.insert(rows, optionsRow)

    -- Show input dialog
    local input = lib.inputDialog(heading, rows, { allowCancel = true })
    if not input then
        if Config.Debug == true then
            print('DMV license test canceled.')
        end
        return false
    end

    -- Check if user selected an option
    if not input[1] then
        if Config.Debug == true then
            print("No option selected.")
        end
        return false
    end

    -- Check answer
    local userAnswerValue = input[1]
    if userAnswerValue == question.correctOption then
        return true -- Correct answer
    else
        return false -- Incorrect answer
    end
end

-- Function to initiate the DMV license test
function startDMVTest()
    local correctAnswers = 0

    -- Loop through each question
    for _, question in ipairs(questions) do
        if openQuestionDialog(question) then
            correctAnswers = correctAnswers + 1
        end
    end

    -- Print results
    if Config.Debug == true then
        print("DMV license test results:")
        print("Correct Answers: " .. correctAnswers)
        print("Passed: " .. tostring(correctAnswers >= 28))
    end

    -- Trigger function to give valid license if 25 questions are answered correctly
    if correctAnswers >= 25 then
        TriggerServerEvent("giveValidLicense", source)
    end
end

-- Register command for the DMV license test
RegisterCommand("dmvtest", function(source, args, rawCommand)
    -- Start the DMV license test when called
    if Config.Debug == true then
        print("/dmvtest used.")
    end
    startDMVTest()
end, false)

-- Register command for the DMV license test
RegisterCommand("dmvtestpasstest", function(source, args, rawCommand)
    -- Start the DMV license test when called
    if Config.Debug == true then
        print("/dmvtestpasstest used.")
    end
    TriggerServerEvent("giveValidLicense")  -- Trigger the server event without passing any arguments
    print("Triggering server event 'giveValidLicense'...")
end, false)

