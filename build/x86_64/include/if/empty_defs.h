#ifndef __empty_IF_H
#define __empty_IF_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: empty
 * INTEFACE FILE: ../if/empty.if
 * INTERFACE DESCRIPTION: Empty interface
 * 
 * This file is distributed under the terms in the attached LICENSE
 * file. If you do not find this file, copies can be found by
 * writing to:
 * ETH Zurich D-INFK, Universitaetstr.6, CH-8092 Zurich.
 * Attn: Systems Group.
 * 
 * THIS FILE IS AUTOMATICALLY GENERATED BY FLOUNDER: DO NOT EDIT!
 */

#include <flounder/flounder.h>

/*
 * Concrete type definitions
 */
typedef uint64_t empty_genpaddr_t;
typedef uint64_t empty_genvaddr_t;
typedef uint32_t empty_rsrcid_t;
typedef uint64_t empty_errval_t;
typedef uint64_t empty_cycles_t;
typedef uint32_t empty_iref_t;
typedef uint8_t empty_coreid_t;
typedef uint32_t empty_domainid_t;

/*
 * Forward declaration of binding type
 */
struct empty_binding;

/*
 * Contination (callback) and control function types
 */
typedef  void empty_bind_continuation_fn(void *st, errval_t err, struct empty_binding *_binding);
typedef  bool empty_can_send_fn(struct empty_binding *_binding);
typedef  errval_t empty_register_send_fn(struct empty_binding *_binding, struct waitset *ws, struct event_closure _continuation);
typedef  errval_t empty_change_waitset_fn(struct empty_binding *_binding, struct waitset *ws);
typedef  errval_t empty_control_fn(struct empty_binding *_binding, idc_control_t control);
typedef  void empty_error_handler_fn(struct empty_binding *_binding, errval_t err);

/*
 * Enumeration for message numbers
 */
typedef enum empty_msg_enum {
    empty___dummy__msgnum = 0,
    empty_unused__msgnum = 1
} empty_msg_enum;

/*
 * Message type signatures (transmit)
 */
typedef  errval_t empty_unused__tx_method_fn(struct empty_binding *_binding, struct event_closure _continuation);

/*
 * Message type signatures (receive)
 */
typedef  void empty_unused__rx_method_fn(struct empty_binding *_binding);

/*
 * Struct type for holding the args for each msg
 */

/*
 * Union type for all message arguments
 */
union empty_arg_union {
};

/*
 * VTable struct definition for the interface (transmit)
 */
struct empty_tx_vtbl {
    empty_unused__tx_method_fn *unused;
};

/*
 * VTable struct definition for the interface (receive)
 */
struct empty_rx_vtbl {
    empty_unused__rx_method_fn *unused;
};

/*
 * Incoming connect callback type
 */
typedef  errval_t empty_connect_fn(void *st, struct empty_binding *binding);

/*
 * Export state struct
 */
struct empty_export {
    struct idc_export common;
    empty_connect_fn *connect_cb;
    struct waitset *waitset;
    void *st;
};

/*
 * Export function
 */
extern  errval_t empty_export(void *st, idc_export_callback_fn *export_cb, empty_connect_fn *connect_cb, struct waitset *ws, idc_export_flags_t flags);

/*
 * The Binding structure
 */
struct empty_binding {
    /* Arbitrary user state pointer */
    void *st;
    
    /* Waitset used for receive handlers and send continuations */
    struct waitset *waitset;
    
    /* Mutex for the use of user code. */
    /* Must be held before any operation where there is a possibility of */
    /* concurrent access to the same binding (eg. multiple threads, or */
    /* asynchronous event handlers that use the same binding object). */
    struct event_mutex mutex;
    
    /* returns true iff a message could currently be accepted by the binding */
    empty_can_send_fn *can_send;
    
    /* register an event for when a message is likely to be able to be sent */
    empty_register_send_fn *register_send;
    
    /* change the waitset used by a binding */
    empty_change_waitset_fn *change_waitset;
    
    /* perform control operations */
    empty_control_fn *control;
    
    /* error handler for any async errors associated with this binding */
    /* must be filled-in by user */
    empty_error_handler_fn *error_handler;
    
    /* Message send functions (filled in by binding) */
    struct empty_tx_vtbl tx_vtbl;
    
    /* Incoming message handlers (filled in by user) */
    struct empty_rx_vtbl rx_vtbl;
    
    /* Private state belonging to the binding implementation */
    union empty_arg_union tx_union;
    union empty_arg_union rx_union;
    struct waitset_chanstate register_chanstate;
    struct waitset_chanstate tx_cont_chanstate;
    enum empty_msg_enum tx_msgnum;
    enum empty_msg_enum rx_msgnum;
    int tx_msg_fragment;
    int rx_msg_fragment;
    size_t tx_str_pos;
    size_t rx_str_pos;
    size_t tx_str_len;
    size_t rx_str_len;
    struct event_queue_node event_qnode;
    empty_bind_continuation_fn *bind_cont;
};

/*
 * Generic bind function
 */
extern  errval_t empty_bind(iref_t i, empty_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags);

/*
 * Send wrappers
 */
static inline errval_t empty_unused__tx(struct empty_binding *_binding, struct event_closure _continuation) __attribute__ ((always_inline));
static inline errval_t empty_unused__tx(struct empty_binding *_binding, struct event_closure _continuation)
{
    return(((_binding->tx_vtbl).unused)(_binding, _continuation));
}


/*
 * Backend-specific includes
 */
#ifdef CONFIG_FLOUNDER_BACKEND_LMP
#include <if/empty_lmp_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_LMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP
#include <if/empty_ump_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP_IPI
#include <if/empty_ump_ipi_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP_IPI
#ifdef CONFIG_FLOUNDER_BACKEND_MULTIHOP
#include <if/empty_multihop_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_MULTIHOP
/*
 * And we're done
 */
#endif // __empty_IF_H
