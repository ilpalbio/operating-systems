//
// Created by palbio on 26/02/26.
//
#include<linux/init.h>
#include<linux/kernel.h>
#include<linux/module.h>

int init_fn(void) {
  printk(KERN_INFO, "Loading Kernel Module\n");
  return 0;
}

void exit_fn(void) {
  printk(KERN_INFO, "Removing Kernel Module\n");
}

module_init(init_fn);
module_exit(exit_fn);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Simple Module");
MODULE_AUTHOR("ilpalbio");