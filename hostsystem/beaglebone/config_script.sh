/dts-v1/;
/plugin/;

# this is our device tree overlay root node #
/{

  compatible = "ti,beaglebone", "ti,beaglebone-black";
  part-number = "BBB-I2C1"; # you can choose any name here but it should be memorable
  version = "00A0";

  fragment@0 {
    target = <&am33xx_pinmux>; # this is a link to an already defined node in the device tree, so that node is overlayed with our modification

    __overlay__ {
      i2c1_pins: pinmux_i2c1_pins {
        pinctrl-single,pins = <
          0x158 0x72 /* spi0_d1.i2c1_sda */
          0x15C 0x72 /* spi0_cs0.i2c1_sdl */
        >;
      };
    };
  };
}; /* root node end */