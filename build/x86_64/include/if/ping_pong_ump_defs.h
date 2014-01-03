#ifndef __ping_pong_UMP_H
#define __ping_pong_UMP_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: ping_pong
 * INTEFACE FILE: ../if/ping_pong.if
 * INTERFACE DESCRIPTION: Ping-Pong async example Interface
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
 * UMP interconnect driver
 */

#include <barrelfish/ump_chan.h>
#include <flounder/flounder_support_ump.h>

struct ping_pong_ump_binding {
    struct ping_pong_binding b;
    struct flounder_ump_state ump_state;
    
    /* bind params for the new monitor continuation */
    iref_t iref;
    size_t inchanlen;
    size_t outchanlen;
};

extern  void ping_pong_ump_destroy(struct ping_pong_ump_binding *b);
extern  errval_t ping_pong_ump_bind(struct ping_pong_ump_binding *b, iref_t iref, ping_pong_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags, size_t inchanlen, size_t outchanlen);
extern  errval_t ping_pong_ump_connect_handler(void *st, struct monitor_binding *mb, uintptr_t mon_id, struct capref frame, size_t inchanlen, size_t outchanlen, struct capref notify_cap);
extern  void ping_pong_ump_rx_handler(void *arg);
extern  errval_t ping_pong_ump_init(struct ping_pong_ump_binding *b, struct waitset *waitset, volatile void *inbuf, size_t inbufsize, volatile void *outbuf, size_t outbufsize);

#endif // __ping_pong_UMP_H
