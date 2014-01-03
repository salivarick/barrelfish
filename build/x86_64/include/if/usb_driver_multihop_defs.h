#ifndef __usb_driver_MULTIHOP_H
#define __usb_driver_MULTIHOP_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: usb_driver
 * INTEFACE FILE: ../if/usb_driver.if
 * INTERFACE DESCRIPTION: USB Drive Interface
 * 
 * This file is distributed under the terms in the attached LICENSE
 * file. If you do not find this file, copies can be found by
 * writing to:
 * ETH Zurich D-INFK, Universitaetstr.6, CH-8092 Zurich.
 * Attn: Systems Group.
 * 
 * THIS FILE IS AUTOMATICALLY GENERATED BY FLOUNDER: DO NOT EDIT!
 */

/*
 * Multihop interconnect driver
 */

#include <barrelfish/multihop_chan.h>

struct usb_driver_multihop_binding {
    struct usb_driver_binding b;
    struct multihop_chan chan;
    void *message;
    struct flounder_cap_state capst;
    bool trigger_chan;
};

extern  void usb_driver_multihop_init(struct usb_driver_multihop_binding *b, struct waitset *waitset);
extern  void usb_driver_multihop_destroy(struct usb_driver_multihop_binding *b);
extern  errval_t usb_driver_multihop_bind(struct usb_driver_multihop_binding *mb, iref_t iref, usb_driver_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags);
extern  errval_t usb_driver_multihop_connect_handler(void *st, multihop_vci_t vci);
extern  void usb_driver_multihop_rx_handler(void *arg, uint8_t *message, size_t message_len);
extern  void usb_driver_multihop_caps_rx_handler(void *arg, errval_t success, struct capref cap, uint32_t capid);

#endif // __usb_driver_MULTIHOP_H