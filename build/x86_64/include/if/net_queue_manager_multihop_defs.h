#ifndef __net_queue_manager_MULTIHOP_H
#define __net_queue_manager_MULTIHOP_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: net_queue_manager
 * INTEFACE FILE: ../if/net_queue_manager.if
 * INTERFACE DESCRIPTION: Ethernet hardware RX/TX queue manager
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

struct net_queue_manager_multihop_binding {
    struct net_queue_manager_binding b;
    struct multihop_chan chan;
    void *message;
    struct flounder_cap_state capst;
    bool trigger_chan;
};

extern  void net_queue_manager_multihop_init(struct net_queue_manager_multihop_binding *b, struct waitset *waitset);
extern  void net_queue_manager_multihop_destroy(struct net_queue_manager_multihop_binding *b);
extern  errval_t net_queue_manager_multihop_bind(struct net_queue_manager_multihop_binding *mb, iref_t iref, net_queue_manager_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags);
extern  errval_t net_queue_manager_multihop_connect_handler(void *st, multihop_vci_t vci);
extern  void net_queue_manager_multihop_rx_handler(void *arg, uint8_t *message, size_t message_len);
extern  void net_queue_manager_multihop_caps_rx_handler(void *arg, errval_t success, struct capref cap, uint32_t capid);

#endif // __net_queue_manager_MULTIHOP_H