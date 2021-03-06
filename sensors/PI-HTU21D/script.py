# SPDX-FileCopyrightText: 2021 ladyada for Adafruit Industries
# SPDX-License-Identifier: MIT

import time
import board
from adafruit_htu21d import HTU21D

# Create sensor object, communicating over the board's default I2C bus
i2c = board.I2C()  # uses board.SCL and board.SDA
sensor = HTU21D(i2c)


while True:
    print("\nTemperature: %0.1f C" % sensor.temperature, flush=True)
    print("Humidity: %0.1f %%" % sensor.relative_humidity, flush=True)
    time.sleep(2)
