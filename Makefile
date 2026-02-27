obj-m += simple.o

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
OUT := build

all: prepare
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	mv *.ko $(OUT)/

	# pulizia file intermedi
	rm -f *.o *.mod.c *.mod.o modules.order Module.symvers .*.cmd *.mod .*.mod .*.o
	rm -rf .tmp_versions

prepare:
	@if [ ! -d "$(OUT)" ]; then \
    		echo "Creating folder $(OUT)"; \
    		mkdir "$(OUT)"; \
    	else \
    		echo "Folder $(OUT) already exists"; \
    	fi

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
	rm -rf $(OUT)