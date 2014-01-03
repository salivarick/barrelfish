#ifndef __mouse_IF_H
#define __mouse_IF_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: mouse
 * INTEFACE FILE: ../if/mouse.if
 * INTERFACE DESCRIPTION: Mouse events
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
typedef uint64_t mouse_genpaddr_t;
typedef uint64_t mouse_genvaddr_t;
typedef uint32_t mouse_rsrcid_t;
typedef uint64_t mouse_errval_t;
typedef uint64_t mouse_cycles_t;
typedef uint32_t mouse_iref_t;
typedef uint8_t mouse_coreid_t;
typedef uint32_t mouse_domainid_t;

/*
 * Forward declaration of binding type
 */
struct mouse_binding;

/*
 * Contination (callback) and control function types
 */
typedef  void mouse_bind_continuation_fn(void *st, errval_t err, struct mouse_binding *_binding);
typedef  bool mouse_can_send_fn(struct mouse_binding *_binding);
typedef  errval_t mouse_register_send_fn(struct mouse_binding *_binding, struct waitset *ws, struct event_closure _continuation);
typedef  errval_t mouse_change_waitset_fn(struct mouse_binding *_binding, struct waitset *ws);
typedef  errval_t mouse_control_fn(struct mouse_binding *_binding, idc_control_t control);
typedef  void mouse_error_handler_fn(struct mouse_binding *_binding, errval_t err);

/*
 * Enumeration for message numbers
 */
typedef enum mouse_msg_enum {
    mouse___dummy__msgnum = 0,
    mouse_mouse_event__msgnum = 1
} mouse_msg_enum;

/*
 * Message type signatures (transmit)
 */
typedef  errval_t mouse_mouse_event__tx_method_fn(struct mouse_binding *_binding, struct event_closure _continuation, int32_t xdelta, int32_t ydelta, bool left, bool middle, bool right);

/*
 * Message type signatures (receive)
 */
typedef  void mouse_mouse_event__rx_method_fn(struct mouse_binding *_binding, int32_t xdelta, int32_t ydelta, bool left, bool middle, bool right);

/*
 * Struct type for holding the args for each msg
 */
struct mouse_mouse_event__args {
    int32_t xdelta;
    int32_t ydelta;
    bool left;
    bool middle;
    bool right;
};

/*
 * Union type for all message arguments
 */
union mouse_arg_union {
    struct mouse_mouse_event__args mouse_event;
};

/*
 * VTable struct definition for the interface (transmit)
 */
struct mouse_tx_vtbl {
    mouse_mouse_event__tx_method_fn *mouse_event;
};

/*
 * VTable struct definition for the interface (receive)
 */
struct mouse_rx_vtbl {
    mouse_mouse_event__rx_method_fn *mouse_event;
};

/*
 * Incoming connect callback type
 */
typedef  errval_t mouse_connect_fn(void *st, struct mouse_binding *binding);

/*
 * Export state struct
 */
struct mouse_export {
    struct idc_export common;
    mouse_connect_fn *connect_cb;
    struct waitset *waitset;
    void *st;
};

/*
 * Export function
 */
extern  errval_t mouse_export(void *st, idc_export_callback_fn *export_cb, mouse_connect_fn *connect_cb, struct waitset *ws, idc_export_flags_t flags);

/*
 * The Binding structure
 */
struct mouse_binding {
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
    mouse_can_send_fn *can_send;
    
    /* register an event for when a message is likely to be able to be sent */
    mouse_register_send_fn *register_send;
    
    /* change the waitset used by a binding */
    mouse_change_waitset_fn *change_waitset;
    
    /* perform control operations */
    mouse_control_fn *control;
    
    /* error handler for any async errors associated with this binding */
    /* must be filled-in by user */
    mouse_error_handler_fn *error_handler;
    
    /* Message send functions (filled in by binding) */
    struct mouse_tx_vtbl tx_vtbl;
    
    /* Incoming message handlers (filled in by user) */
    struct mouse_rx_vtbl rx_vtbl;
    
    /* Private state belonging to the binding implementation */
    union mouse_arg_union tx_union;
    union mouse_arg_union rx_union;
    struct waitset_chanstate register_chanstate;
    struct waitset_chanstate tx_cont_chanstate;
    enum mouse_msg_enum tx_msgnum;
    enum mouse_msg_enum rx_msgnum;
    int tx_msg_fragment;
    int rx_msg_fragment;
    size_t tx_str_pos;
    size_t rx_str_pos;
    size_t tx_str_len;
    size_t rx_str_len;
    struct event_queue_node event_qnode;
    mouse_bind_continuation_fn *bind_cont;
};

/*
 * Generic bind function
 */
extern  errval_t mouse_bind(iref_t i, mouse_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags);

/*
 * Send wrappers
 */
static inline errval_t mouse_mouse_event__tx(struct mouse_binding *_binding, struct event_closure _continuation, int32_t xdelta, int32_t ydelta, bool left, bool middle, bool right) __attribute__ ((always_inline));
static inline errval_t mouse_mouse_event__tx(struct mouse_binding *_binding, struct event_closure _continuation, int32_t xdelta, int32_t ydelta, bool left, bool middle, bool right)
{
    return(((_binding->tx_vtbl).mouse_event)(_binding, _continuation, xdelta, ydelta, left, middle, right));
}


/*
 * Backend-specific includes
 */
#ifdef CONFIG_FLOUNDER_BACKEND_LMP
#include <if/mouse_lmp_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_LMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP
#include <if/mouse_ump_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP_IPI
#include <if/mouse_ump_ipi_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP_IPI
#ifdef CONFIG_FLOUNDER_BACKEND_MULTIHOP
#include <if/mouse_multihop_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_MULTIHOP
/*
 * And we're done
 */
#endif // __mouse_IF_H
