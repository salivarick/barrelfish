#ifndef __net_queue_manager_IF_H
#define __net_queue_manager_IF_H 1
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

#include <flounder/flounder.h>

/*
 * Concrete type definitions
 */
typedef uint64_t net_queue_manager_genpaddr_t;
typedef uint64_t net_queue_manager_genvaddr_t;
typedef uint32_t net_queue_manager_rsrcid_t;
typedef uint64_t net_queue_manager_errval_t;
typedef uint64_t net_queue_manager_cycles_t;
typedef uint32_t net_queue_manager_iref_t;
typedef uint8_t net_queue_manager_coreid_t;
typedef uint32_t net_queue_manager_domainid_t;

/*
 * Forward declaration of binding type
 */
struct net_queue_manager_binding;

/*
 * Contination (callback) and control function types
 */
typedef  void net_queue_manager_bind_continuation_fn(void *st, errval_t err, struct net_queue_manager_binding *_binding);
typedef  bool net_queue_manager_can_send_fn(struct net_queue_manager_binding *_binding);
typedef  errval_t net_queue_manager_register_send_fn(struct net_queue_manager_binding *_binding, struct waitset *ws, struct event_closure _continuation);
typedef  errval_t net_queue_manager_change_waitset_fn(struct net_queue_manager_binding *_binding, struct waitset *ws);
typedef  errval_t net_queue_manager_control_fn(struct net_queue_manager_binding *_binding, idc_control_t control);
typedef  void net_queue_manager_error_handler_fn(struct net_queue_manager_binding *_binding, errval_t err);

/*
 * Enumeration for message numbers
 */
typedef enum net_queue_manager_msg_enum {
    net_queue_manager___dummy__msgnum = 0,
    net_queue_manager_register_buffer__msgnum = 1,
    net_queue_manager_new_buffer_id__msgnum = 2,
    net_queue_manager_get_mac_address__msgnum = 3,
    net_queue_manager_get_mac_address_response__msgnum = 4,
    net_queue_manager_sp_notification_from_app__msgnum = 5,
    net_queue_manager_sp_notification_from_driver__msgnum = 6,
    net_queue_manager_print_statistics__msgnum = 7,
    net_queue_manager_print_cardinfo__msgnum = 8,
    net_queue_manager_benchmark_control_request__msgnum = 9,
    net_queue_manager_benchmark_control_response__msgnum = 10
} net_queue_manager_msg_enum;

/*
 * Message type signatures (transmit)
 */
typedef  errval_t net_queue_manager_register_buffer__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, struct capref buf, struct capref sp, uint64_t queueid, uint64_t slots, uint8_t role);
typedef  errval_t net_queue_manager_new_buffer_id__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, net_queue_manager_errval_t err, uint64_t queueid, uint64_t idx);
typedef  errval_t net_queue_manager_get_mac_address__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid);
typedef  errval_t net_queue_manager_get_mac_address_response__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t hwaddr);
typedef  errval_t net_queue_manager_sp_notification_from_app__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t type, uint64_t ts);
typedef  errval_t net_queue_manager_sp_notification_from_driver__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t type, uint64_t ts);
typedef  errval_t net_queue_manager_print_statistics__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid);
typedef  errval_t net_queue_manager_print_cardinfo__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation);
typedef  errval_t net_queue_manager_benchmark_control_request__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint8_t state, uint64_t trigger, uint64_t cl);
typedef  errval_t net_queue_manager_benchmark_control_response__tx_method_fn(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint8_t state, uint64_t delta, uint64_t cl);

/*
 * Message type signatures (receive)
 */
typedef  void net_queue_manager_register_buffer__rx_method_fn(struct net_queue_manager_binding *_binding, struct capref buf, struct capref sp, uint64_t queueid, uint64_t slots, uint8_t role);
typedef  void net_queue_manager_new_buffer_id__rx_method_fn(struct net_queue_manager_binding *_binding, net_queue_manager_errval_t err, uint64_t queueid, uint64_t idx);
typedef  void net_queue_manager_get_mac_address__rx_method_fn(struct net_queue_manager_binding *_binding, uint64_t queueid);
typedef  void net_queue_manager_get_mac_address_response__rx_method_fn(struct net_queue_manager_binding *_binding, uint64_t queueid, uint64_t hwaddr);
typedef  void net_queue_manager_sp_notification_from_app__rx_method_fn(struct net_queue_manager_binding *_binding, uint64_t queueid, uint64_t type, uint64_t ts);
typedef  void net_queue_manager_sp_notification_from_driver__rx_method_fn(struct net_queue_manager_binding *_binding, uint64_t queueid, uint64_t type, uint64_t ts);
typedef  void net_queue_manager_print_statistics__rx_method_fn(struct net_queue_manager_binding *_binding, uint64_t queueid);
typedef  void net_queue_manager_print_cardinfo__rx_method_fn(struct net_queue_manager_binding *_binding);
typedef  void net_queue_manager_benchmark_control_request__rx_method_fn(struct net_queue_manager_binding *_binding, uint64_t queueid, uint8_t state, uint64_t trigger, uint64_t cl);
typedef  void net_queue_manager_benchmark_control_response__rx_method_fn(struct net_queue_manager_binding *_binding, uint64_t queueid, uint8_t state, uint64_t delta, uint64_t cl);

/*
 * Struct type for holding the args for each msg
 */
struct net_queue_manager_register_buffer__args {
    struct capref buf;
    struct capref sp;
    uint64_t queueid;
    uint64_t slots;
    uint8_t role;
};
struct net_queue_manager_new_buffer_id__args {
    net_queue_manager_errval_t err;
    uint64_t queueid;
    uint64_t idx;
};
struct net_queue_manager_get_mac_address__args {
    uint64_t queueid;
};
struct net_queue_manager_get_mac_address_response__args {
    uint64_t queueid;
    uint64_t hwaddr;
};
struct net_queue_manager_sp_notification_from_app__args {
    uint64_t queueid;
    uint64_t type;
    uint64_t ts;
};
struct net_queue_manager_sp_notification_from_driver__args {
    uint64_t queueid;
    uint64_t type;
    uint64_t ts;
};
struct net_queue_manager_print_statistics__args {
    uint64_t queueid;
};
struct net_queue_manager_benchmark_control_request__args {
    uint64_t queueid;
    uint8_t state;
    uint64_t trigger;
    uint64_t cl;
};
struct net_queue_manager_benchmark_control_response__args {
    uint64_t queueid;
    uint8_t state;
    uint64_t delta;
    uint64_t cl;
};

/*
 * Union type for all message arguments
 */
union net_queue_manager_arg_union {
    struct net_queue_manager_register_buffer__args register_buffer;
    struct net_queue_manager_new_buffer_id__args new_buffer_id;
    struct net_queue_manager_get_mac_address__args get_mac_address;
    struct net_queue_manager_get_mac_address_response__args get_mac_address_response;
    struct net_queue_manager_sp_notification_from_app__args sp_notification_from_app;
    struct net_queue_manager_sp_notification_from_driver__args sp_notification_from_driver;
    struct net_queue_manager_print_statistics__args print_statistics;
    struct net_queue_manager_benchmark_control_request__args benchmark_control_request;
    struct net_queue_manager_benchmark_control_response__args benchmark_control_response;
};

/*
 * VTable struct definition for the interface (transmit)
 */
struct net_queue_manager_tx_vtbl {
    net_queue_manager_register_buffer__tx_method_fn *register_buffer;
    net_queue_manager_new_buffer_id__tx_method_fn *new_buffer_id;
    net_queue_manager_get_mac_address__tx_method_fn *get_mac_address;
    net_queue_manager_get_mac_address_response__tx_method_fn *get_mac_address_response;
    net_queue_manager_sp_notification_from_app__tx_method_fn *sp_notification_from_app;
    net_queue_manager_sp_notification_from_driver__tx_method_fn *sp_notification_from_driver;
    net_queue_manager_print_statistics__tx_method_fn *print_statistics;
    net_queue_manager_print_cardinfo__tx_method_fn *print_cardinfo;
    net_queue_manager_benchmark_control_request__tx_method_fn *benchmark_control_request;
    net_queue_manager_benchmark_control_response__tx_method_fn *benchmark_control_response;
};

/*
 * VTable struct definition for the interface (receive)
 */
struct net_queue_manager_rx_vtbl {
    net_queue_manager_register_buffer__rx_method_fn *register_buffer;
    net_queue_manager_new_buffer_id__rx_method_fn *new_buffer_id;
    net_queue_manager_get_mac_address__rx_method_fn *get_mac_address;
    net_queue_manager_get_mac_address_response__rx_method_fn *get_mac_address_response;
    net_queue_manager_sp_notification_from_app__rx_method_fn *sp_notification_from_app;
    net_queue_manager_sp_notification_from_driver__rx_method_fn *sp_notification_from_driver;
    net_queue_manager_print_statistics__rx_method_fn *print_statistics;
    net_queue_manager_print_cardinfo__rx_method_fn *print_cardinfo;
    net_queue_manager_benchmark_control_request__rx_method_fn *benchmark_control_request;
    net_queue_manager_benchmark_control_response__rx_method_fn *benchmark_control_response;
};

/*
 * Incoming connect callback type
 */
typedef  errval_t net_queue_manager_connect_fn(void *st, struct net_queue_manager_binding *binding);

/*
 * Export state struct
 */
struct net_queue_manager_export {
    struct idc_export common;
    net_queue_manager_connect_fn *connect_cb;
    struct waitset *waitset;
    void *st;
};

/*
 * Export function
 */
extern  errval_t net_queue_manager_export(void *st, idc_export_callback_fn *export_cb, net_queue_manager_connect_fn *connect_cb, struct waitset *ws, idc_export_flags_t flags);

/*
 * The Binding structure
 */
struct net_queue_manager_binding {
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
    net_queue_manager_can_send_fn *can_send;
    
    /* register an event for when a message is likely to be able to be sent */
    net_queue_manager_register_send_fn *register_send;
    
    /* change the waitset used by a binding */
    net_queue_manager_change_waitset_fn *change_waitset;
    
    /* perform control operations */
    net_queue_manager_control_fn *control;
    
    /* error handler for any async errors associated with this binding */
    /* must be filled-in by user */
    net_queue_manager_error_handler_fn *error_handler;
    
    /* Message send functions (filled in by binding) */
    struct net_queue_manager_tx_vtbl tx_vtbl;
    
    /* Incoming message handlers (filled in by user) */
    struct net_queue_manager_rx_vtbl rx_vtbl;
    
    /* Private state belonging to the binding implementation */
    union net_queue_manager_arg_union tx_union;
    union net_queue_manager_arg_union rx_union;
    struct waitset_chanstate register_chanstate;
    struct waitset_chanstate tx_cont_chanstate;
    enum net_queue_manager_msg_enum tx_msgnum;
    enum net_queue_manager_msg_enum rx_msgnum;
    int tx_msg_fragment;
    int rx_msg_fragment;
    size_t tx_str_pos;
    size_t rx_str_pos;
    size_t tx_str_len;
    size_t rx_str_len;
    struct event_queue_node event_qnode;
    net_queue_manager_bind_continuation_fn *bind_cont;
};

/*
 * Generic bind function
 */
extern  errval_t net_queue_manager_bind(iref_t i, net_queue_manager_bind_continuation_fn *_continuation, void *st, struct waitset *waitset, idc_bind_flags_t flags);

/*
 * Send wrappers
 */
static inline errval_t net_queue_manager_register_buffer__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, struct capref buf, struct capref sp, uint64_t queueid, uint64_t slots, uint8_t role) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_register_buffer__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, struct capref buf, struct capref sp, uint64_t queueid, uint64_t slots, uint8_t role)
{
    return(((_binding->tx_vtbl).register_buffer)(_binding, _continuation, buf, sp, queueid, slots, role));
}

static inline errval_t net_queue_manager_new_buffer_id__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, net_queue_manager_errval_t err, uint64_t queueid, uint64_t idx) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_new_buffer_id__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, net_queue_manager_errval_t err, uint64_t queueid, uint64_t idx)
{
    return(((_binding->tx_vtbl).new_buffer_id)(_binding, _continuation, err, queueid, idx));
}

static inline errval_t net_queue_manager_get_mac_address__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_get_mac_address__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid)
{
    return(((_binding->tx_vtbl).get_mac_address)(_binding, _continuation, queueid));
}

static inline errval_t net_queue_manager_get_mac_address_response__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t hwaddr) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_get_mac_address_response__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t hwaddr)
{
    return(((_binding->tx_vtbl).get_mac_address_response)(_binding, _continuation, queueid, hwaddr));
}

static inline errval_t net_queue_manager_sp_notification_from_app__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t type, uint64_t ts) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_sp_notification_from_app__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t type, uint64_t ts)
{
    return(((_binding->tx_vtbl).sp_notification_from_app)(_binding, _continuation, queueid, type, ts));
}

static inline errval_t net_queue_manager_sp_notification_from_driver__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t type, uint64_t ts) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_sp_notification_from_driver__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint64_t type, uint64_t ts)
{
    return(((_binding->tx_vtbl).sp_notification_from_driver)(_binding, _continuation, queueid, type, ts));
}

static inline errval_t net_queue_manager_print_statistics__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_print_statistics__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid)
{
    return(((_binding->tx_vtbl).print_statistics)(_binding, _continuation, queueid));
}

static inline errval_t net_queue_manager_print_cardinfo__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_print_cardinfo__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation)
{
    return(((_binding->tx_vtbl).print_cardinfo)(_binding, _continuation));
}

static inline errval_t net_queue_manager_benchmark_control_request__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint8_t state, uint64_t trigger, uint64_t cl) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_benchmark_control_request__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint8_t state, uint64_t trigger, uint64_t cl)
{
    return(((_binding->tx_vtbl).benchmark_control_request)(_binding, _continuation, queueid, state, trigger, cl));
}

static inline errval_t net_queue_manager_benchmark_control_response__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint8_t state, uint64_t delta, uint64_t cl) __attribute__ ((always_inline));
static inline errval_t net_queue_manager_benchmark_control_response__tx(struct net_queue_manager_binding *_binding, struct event_closure _continuation, uint64_t queueid, uint8_t state, uint64_t delta, uint64_t cl)
{
    return(((_binding->tx_vtbl).benchmark_control_response)(_binding, _continuation, queueid, state, delta, cl));
}


/*
 * Backend-specific includes
 */
#ifdef CONFIG_FLOUNDER_BACKEND_LMP
#include <if/net_queue_manager_lmp_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_LMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP
#include <if/net_queue_manager_ump_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP
#ifdef CONFIG_FLOUNDER_BACKEND_UMP_IPI
#include <if/net_queue_manager_ump_ipi_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_UMP_IPI
#ifdef CONFIG_FLOUNDER_BACKEND_MULTIHOP
#include <if/net_queue_manager_multihop_defs.h>
#endif // CONFIG_FLOUNDER_BACKEND_MULTIHOP
/*
 * And we're done
 */
#endif // __net_queue_manager_IF_H
