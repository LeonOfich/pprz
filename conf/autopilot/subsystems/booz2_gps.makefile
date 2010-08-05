
ap.srcs += $(SRC_BOOZ)/booz2_gps.c
ifeq ($(ARCHI), arm7)
ap.CFLAGS += -DUSE_UART0 -DUART0_BAUD=B38400 -DUART0_VIC_SLOT=5
ap.CFLAGS += -DUSE_GPS -DGPS_LINK=Uart0 -DGPS_LED=4
else ifeq ($(ARCHI), stm32) 
ap.CFLAGS += -DUSE_UART1 -DUART1_BAUD=B38400
ap.CFLAGS += -DUSE_GPS -DGPS_LINK=Uart1 -DGPS_LED=3
endif
sim.CFLAGS += -DUSE_GPS
sim.srcs += $(SRC_BOOZ)/booz2_gps.c
