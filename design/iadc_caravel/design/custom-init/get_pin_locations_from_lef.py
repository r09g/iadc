import pprint
pp = pprint.PrettyPrinter(indent=4)

i = 0
pins = []
within_pin_block = False
with open('user_project_wrapper.lef') as f:
    for line in f:
        if line.strip().startswith('PIN '):
            within_pin_block = True
            pin_name = line.strip().split()[1]
            pins.append({"pin_name" : pin_name})
            i = i + 1
        if line.strip().startswith('END ') and line.strip().split()[1] == pin_name:
            within_pin_block = False
        if within_pin_block:
            if line.strip().startswith('LAYER '):
                pins[i - 1]["layer"] = line.strip().split()[1]
            if line.strip().startswith('RECT '):
                pins[i - 1]["x0"] = float(line.strip().split()[1])
                pins[i - 1]["y0"] = float(line.strip().split()[2])

for item in pins:
    if item["pin_name"] == "vccd1":
        pins.remove(item)
for item in pins:
    if item["pin_name"] == "vccd2":
        pins.remove(item)
for item in pins:
    if item["pin_name"] == "vssd1":
        pins.remove(item)
for item in pins:
    if item["pin_name"] == "vssd2":
        pins.remove(item)
for item in pins:
    if item["pin_name"] == "vdda1":
        pins.remove(item)
for item in pins:
    if item["pin_name"] == "vdda2":
        pins.remove(item)
for item in pins:
    if item["pin_name"] == "vssa1":
        pins.remove(item)
for item in pins:
    if item["pin_name"] == "vssa2":
        pins.remove(item)
 
#for item in pins:
#    if item["layer"] == "met5" or item["layer"] == "met4":
#        print(item)

# Output pins clockwise
# Top side, going left to right: Have maximum y, arranged in increasing x
sorted_pins_by_y = sorted(pins, key=lambda d: d['y0'], reverse=True)
max_y = sorted_pins_by_y[0]["y0"]
top_pins = sorted([item for item in sorted_pins_by_y if item['y0'] == max_y], key=lambda d: d['x0'])
top_pin_names = [item['pin_name'] for item in top_pins]

# Right side, going top to bottom: Have maximum x, arranged in decreasing y
sorted_pins_by_x = sorted(pins, key=lambda d: d['x0'], reverse=False)
max_x = sorted_pins_by_x[-1]["x0"]
right_pins = sorted([item for item in sorted_pins_by_x if item['x0'] == max_x], key=lambda d: d['y0'], reverse=True)
right_pin_names = [item['pin_name'] for item in right_pins]

# Bottom side, going right to left: Have minimum y, arranged in decreasing x
min_y = sorted_pins_by_y[-1]["y0"]
bottom_pins = sorted([item for item in sorted_pins_by_y if item['y0'] == min_y], key=lambda d: d['x0'], reverse=True)
bottom_pin_names = [item['pin_name'] for item in bottom_pins]

# Left side, going bottom to top: Have minimum x, arranged in increasing y
min_x = sorted_pins_by_x[0]["x0"]
left_pins = sorted([item for item in sorted_pins_by_x if item['x0'] == min_x], key=lambda d: d['y0'])
left_pin_names = [item['pin_name'] for item in left_pins]


top_pin_layer = top_pins[0]['layer']
for pin in top_pins:
    assert(pin['layer'] == top_pin_layer)

right_pin_layer = right_pins[0]['layer']
for pin in right_pins:
    assert(pin['layer'] == right_pin_layer)

bottom_pin_layer = bottom_pins[0]['layer']
for pin in bottom_pins:
    assert(pin['layer'] == bottom_pin_layer)

left_pin_layer = left_pins[0]['layer']
for pin in left_pins:
    assert(pin['layer'] == left_pin_layer)

with open('outputs/pin-assignments.tcl', 'w') as f:
    # Print LEF
    print('# Placing pins clockwise starting from top left\n', file=f)
    print('# Pins on the top side, going left to right\n', file=f)
    print('set pins_top {\\', file=f)
    for pin in top_pin_names:
        print('  {' + pin + '} \\', file=f)
    print('}\n', file=f)

    print('# Pins on the right side, going top to bottom\n', file=f)
    print('set pins_right {\\', file=f)
    for pin in right_pin_names:
        print('  {' + pin + '} \\', file=f)
    print('}\n', file=f)

    print('# Pins on the bottom side, going right to left\n', file=f)
    print('set pins_bottom {\\', file=f)
    for pin in bottom_pin_names:
        print('  {' + pin + '} \\', file=f)
    print('}\n', file=f)

    print('# Pins on the left side, going bottom to top\n', file=f)
    print('set pins_left {\\', file=f)
    for pin in left_pin_names:
        print('  {' + pin + '} \\', file=f)
    print('}\n', file=f)

    print('editPin -layer ' + top_pin_layer    + ' -pin $pins_top    -side TOP    -spreadType SIDE', file=f)
    print('editPin -layer ' + right_pin_layer  + ' -pin $pins_right  -side RIGHT  -spreadType SIDE', file=f)
    print('editPin -layer ' + bottom_pin_layer + ' -pin $pins_bottom -side BOTTOM -spreadType SIDE', file=f)
    print('editPin -layer ' + left_pin_layer   + ' -pin $pins_left   -side LEFT   -spreadType SIDE', file=f)
