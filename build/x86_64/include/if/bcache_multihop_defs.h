#ifndef __bcache_MULTIHOP_H
#define __bcache_MULTIHOP_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: bcache
 * INTEFACE FILE: ../if/bcache.if
 * INTERFACE DESCRIPTION: Buffer cache
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

struct bcache_multihop_binding {
    struct bcache_binding b;
    struct multihop_chan chan;
    void *message;
    struct flounder_cap_state capst;
    bool trigger_chan;
};

extern  void bcache_multihop_init(struct bcache_multihop_binding *b, struct waitset *waitset);
extern  void bcache_multihop_destroy(struct bcache_multihop_binding *b);
extern  errval_t bcache_multihop_bind(struct bcache_multihop_binding *mb, iref_t iref, bcache_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags);
extern  errval_t bcache_multihop_connect_handler(void *st, multihop_vci_t vci);
extern  void bcache_multihop_rx_handler(void *arg, uint8_t *message, size_t message_len);
extern  void bcache_multihop_caps_rx_handler(void *arg, errval_t success, struct capref cap, uint32_t capid);

#endif // __bcache_MULTIHOP_H
