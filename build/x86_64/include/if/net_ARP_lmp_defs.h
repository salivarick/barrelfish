#ifndef __net_ARP_LMP_H
#define __net_ARP_LMP_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: net_ARP
 * INTEFACE FILE: ../if/net_ARP.if
 * INTERFACE DESCRIPTION: ARP Table
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
 * LMP interconnect driver
 */

#include <barrelfish/lmp_chan.h>

struct net_ARP_lmp_binding {
    struct net_ARP_binding b;
    struct lmp_chan chan;
    lmp_send_flags_t flags;
};

extern  void net_ARP_lmp_init(struct net_ARP_lmp_binding *b, struct waitset *waitset);
extern  void net_ARP_lmp_destroy(struct net_ARP_lmp_binding *b);
extern  errval_t net_ARP_lmp_bind(struct net_ARP_lmp_binding *b, iref_t iref, net_ARP_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags, size_t lmp_buflen);
extern  errval_t net_ARP_lmp_connect_handler(void *st, size_t buflen_words, struct capref endpoint, struct lmp_chan **retchan);
extern  void net_ARP_lmp_rx_handler(void *arg);

#endif // __net_ARP_LMP_H