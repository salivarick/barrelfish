#ifndef __bcache_LMP_H
#define __bcache_LMP_H 1
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
 * LMP interconnect driver
 */

#include <barrelfish/lmp_chan.h>

struct bcache_lmp_binding {
    struct bcache_binding b;
    struct lmp_chan chan;
    lmp_send_flags_t flags;
};

extern  void bcache_lmp_init(struct bcache_lmp_binding *b, struct waitset *waitset);
extern  void bcache_lmp_destroy(struct bcache_lmp_binding *b);
extern  errval_t bcache_lmp_bind(struct bcache_lmp_binding *b, iref_t iref, bcache_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags, size_t lmp_buflen);
extern  errval_t bcache_lmp_connect_handler(void *st, size_t buflen_words, struct capref endpoint, struct lmp_chan **retchan);
extern  void bcache_lmp_rx_handler(void *arg);

#endif // __bcache_LMP_H
