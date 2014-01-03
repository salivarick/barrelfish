#ifndef __xmplmsg_IF_H
#define __xmplmsg_IF_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: xmplmsg
 * INTEFACE FILE: ../if/xmplmsg.if
 * INTERFACE DESCRIPTION: Example message interface
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
typedef uint64_t xmplmsg_genpaddr_t;
typedef uint64_t xmplmsg_genvaddr_t;
typedef uint32_t xmplmsg_rsrcid_t;
typedef uint64_t xmplmsg_errval_t;
typedef uint64_t xmplmsg_cycles_t;
typedef uint32_t xmplmsg_iref_t;
typedef uint8_t xmplmsg_coreid_t;
typedef uint32_t xmplmsg_domainid_t;

/*
 * Forward declaration of binding type
 */
struct xmplmsg_binding;

/*
 * Contination (callback) and control function types
 */
typedef  void xmplmsg_bind_continuation_fn(void *st, errval_t err, struct xmplmsg_binding *_binding);
typedef  bool xmplmsg_can_send_fn(struct xmplmsg_binding *_binding);
typedef  errval_t xmplmsg_register_send_fn(struct xmplmsg_binding *_binding, struct waitset *ws, struct event_closure _continuation);
typedef  errval_t xmplmsg_change_waitset_fn(struct xmplmsg_binding *_binding, struct waitset *ws);
typedef  errval_t xmplmsg_control_fn(struct xmplmsg_binding *_binding, idc_control_t control);
typedef  void xmplmsg_error_handler_fn(struct xmplmsg_binding *_binding, errval_t err);

/*
 * Enumeration for message numbers
 */
typedef enum xmplmsg_msg_enum {
    xmplmsg___dummy__msgnum = 0,
    xmplmsg_msg_ints__msgnum = 1,
    xmplmsg_msg_string__msgnum = 2
} xmplmsg_msg_enum;

/*
 * Message type signatures (transmit)
 */
typedef  errval_t xmplmsg_msg_ints__tx_method_fn(struct xmplmsg_binding *_binding, struct event_closure _continuation, int32_t i, int32_t j);
typedef  errval_t xmplmsg_msg_string__tx_method_fn(struct xmplmsg_binding *_binding, struct event_closure _continuation, const char *s);

/*
 * Message type signatures (receive)
 */
typedef  void xmplmsg_msg_ints__rx_method_fn(struct xmplmsg_binding *_binding, int32_t i, int32_t j);
typedef  void xmplmsg_msg_string__rx_method_fn(struct xmplmsg_binding *_binding, char *s);

/*
 * Struct type for holding the args for each msg
 */
struct xmplmsg_msg_ints__args {
    int32_t i;
    int32_t j;
};
struct xmplmsg_msg_string__args {
    char *s;
};

/*
 * Union type for all message arguments
 */
union xmplmsg_arg_union {
    struct xmplmsg_msg_ints__args msg_ints;
    struct xmplmsg_msg_string__args msg_string;
};

/*
 * VTable struct definition for the interface (transmit)
 */
struct xmplmsg_tx_vtbl {
    xmplmsg_msg_ints__tx_method_fn *msg_ints;
    xmplmsg_msg_string__tx_method_fn *msg_string;
};

/*
 * VTable struct definition for the interface (receive)
 */
struct xmplmsg_rx_vtbl {
    xmplmsg_msg_ints__rx_method_fn *msg_ints;
    xmplmsg_msg_string__rx_method_fn *msg_string;
};

/*
 * Incoming connect callback type
 */
typedef  errval_t xmplmsg_connect_fn(void *st, struct xmplmsg_binding *binding);

/*
 * Export state struct
 */
struct xmplmsg_export {
    struct idc_export common;
    xmplmsg_connect_fn *connect_cb;
    struct waitset *waitset;
    void *st;
};

/*
 * Export function
 */
extern  errval_t xmplmsg_export(void *st, idc_export_callback_fn *export_cb, xmplmsg_connect_fn *connect_cb, struct waitset *ws, idc_export_flags_t flags);

/*
 * The Binding structure
 */
struct xmplmsg_binding {
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
    xmplmsg_can_send_fn *can_send;
    
    /* register an event for when a message is likely to be able to be sent */
    xmplmsg_register_send_fn *register_send;
    
    /* change the waitset used by a binding */
    xmplmsg_change_waitset_fn *change_waitset;
    
    /* perform control operations */
    xmplmsg_control_fn *control;
    
    /* error handler for any async errors associated with this binding */
    /* must be filled-in by user */
    xmplmsg_error_handler_fn *error_handler;
    
    /* Message send functions (filled in by binding) */
    struct xmplmsg_tx_vtbl tx_vtbl;
    
    /* Incoming message handlers (filled in by user) */
    struct xmplmsg_rx_vtbl rx_vtbl;
    
    /* Private state belonging to the binding implementation */
    union xmplmsg_arg_union tx_union;
    union xmplmsg_arg_union rx_union;
    struct waitset_chanstate register_chanstate;
    struct waitset_chanstate tx_cont_chanstate;
    enum xmplmsg_msg_enum tx_msgnum;
    enum xmplmsg_msg_enum rx_msgnum;
    int tx_msg_fragment;
    int rx_msg_fragment;
    size_t tx_str_pos;
    size_t rx_str_pos;
    size_t tx_str_len;
    size_t rx_str_len;
    struct event_queue_node event_qnode;
    xmplmsg_bind_continuation_fn *bind_cont;
};

/*
 * Generic bind function
 */
extern  errval_t xmplmsg_bind(iref_t i, xmplmsg_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags);

/*
 * Send wrappers
 */
static inline errval_t xmplmsg_msg_ints__tx(struct xmplmsg_binding *_binding, struct event_closure _continuation, int32_t i, int32_t j) __attribute__ ((always_inline));
static inline errval_t xmplmsg_msg_ints__tx(struct xmplmsg_binding *_binding, struct event_closure _continuation, int32_t i, int32_t j)
{
    return(((_binding->tx_vtbl).msg_ints)(_binding, _continuation, i, j));
}

static inline errval_t xmplmsg_msg_string__tx(struct xmplmsg_binding *_binding, struct event_closure _continuation, const char *s) __attribute__ ((always_inline));
static inline errval_t xmplmsg_msg_string__tx(struct xmplmsg_binding *_binding, struct event_closure _continuation, const char *s)
{
    return(((_binding->tx_vtbl).msg_string)(_binding, _continuation, s));
}


/*
 * Backend-specific includes
 */
#ifdef CONFIG_FLOUNDER_BACKEND_LMP
#include <if/xmplmsg_lmp_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_LMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP
#include <if/xmplmsg_ump_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP_IPI
#include <if/xmplmsg_ump_ipi_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP_IPI
#ifdef CONFIG_FLOUNDER_BACKEND_MULTIHOP
#include <if/xmplmsg_multihop_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_MULTIHOP
/*
 * And we're done
 */
#endif // __xmplmsg_IF_H
