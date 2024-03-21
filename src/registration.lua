function openDMVDialog()

    -- Define input dialog parameters
    local heading = "DMV Registration"
    local rows = {
        { type = 'input', label = 'Name', description = 'Enter your name', required = true },
        { type = 'input', label = 'Address', description = 'Enter your address', required = true },
        { type = 'input', label = 'License Plate', description = 'Enter license plate', required = true },
        { type = 'number', label = 'Age', description = 'Enter your age', min = 18, required = true },
        { type = 'select', label = 'Vehicle Type', options = {
            { label = 'Car', value = 'car' },
            { label = 'Motorcycle', value = 'motorcycle' },
            { label = 'Truck', value = 'truck' }
        }, required = true },
        { type = 'checkbox', label = 'Agree to Terms and Conditions', required = true },
    }

    -- Show input dialog
    local input = lib.inputDialog(heading, rows)
    if not input then
        print('DMV registration canceled.')
        return
    end

    -- Process the input data
    local name = input[1]
    local address = input[2]
    local licensePlate = input[3]
    local age = input[4]
    local vehicleType = input[5]
    local agreeToTerms = input[6]

    -- Print the inputs
    print("Name:", name)
    print("Address:", address)
    print("License Plate:", licensePlate)
    print("Age:", age)
    print("Vehicle Type:", vehicleType)
    print("Agree to Terms and Conditions:", agreeToTerms)

    -- Do something with the data (e.g., register the player in the database)
    -- Example: TriggerEvent('dmv:register', name, address, licensePlate, age, vehicleType, agreeToTerms)
end

RegisterCommand("dmv", function(source, args, rawCommand)
    openDMVDialog()
end, false)
