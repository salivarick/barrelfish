/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: skb
 * INTEFACE FILE: ../if/skb.if
 * INTERFACE DESCRIPTION: SKB RPC Interface
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
 * Generated Stub for RPC
 */

#include <barrelfish/barrelfish.h>
#include <flounder/flounder_support.h>
#include <if/skb_rpcclient_defs.h>

/*
 * RPC wrapper functions
 */
static  errval_t skb_run__rpc(struct skb_rpc_client *_rpc, const char *input, char **output, char **str_error, int32_t *int_error)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).run_call)(_rpc->b, NOP_CONT, input));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *output = (((_binding->rx_union).run_response).output);
    *str_error = (((_binding->rx_union).run_response).str_error);
    *int_error = (((_binding->rx_union).run_response).int_error);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_get_identifier__rpc(struct skb_rpc_client *_rpc, uint64_t *id)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).get_identifier_call)(_rpc->b, NOP_CONT));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *id = (((_binding->rx_union).get_identifier_response).id);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_identify__rpc(struct skb_rpc_client *_rpc, uint64_t id)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).identify_call)(_rpc->b, NOP_CONT, id));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_get__rpc(struct skb_rpc_client *_rpc, const char *query, char **output, char **error, skb_errval_t *error_code)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).get_call)(_rpc->b, NOP_CONT, query));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *output = (((_binding->rx_union).get_response).output);
    *error = (((_binding->rx_union).get_response).error);
    *error_code = (((_binding->rx_union).get_response).error_code);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_set__rpc(struct skb_rpc_client *_rpc, const char *input, char **error, skb_errval_t *error_code)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).set_call)(_rpc->b, NOP_CONT, input));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *error = (((_binding->rx_union).set_response).error);
    *error_code = (((_binding->rx_union).set_response).error_code);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_del__rpc(struct skb_rpc_client *_rpc, const char *query, skb_errval_t *error_code)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).del_call)(_rpc->b, NOP_CONT, query));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *error_code = (((_binding->rx_union).del_response).error_code);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_subscribe__rpc(struct skb_rpc_client *_rpc, const char *query, uint64_t id, skb_errval_t *err)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).subscribe_call)(_rpc->b, NOP_CONT, query, id));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *err = (((_binding->rx_union).subscribe_response).err);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_unsubscribe__rpc(struct skb_rpc_client *_rpc, uint64_t id, skb_errval_t *err)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).unsubscribe_call)(_rpc->b, NOP_CONT, id));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *err = (((_binding->rx_union).unsubscribe_response).err);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_publish__rpc(struct skb_rpc_client *_rpc, const char *object, skb_errval_t *err)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).publish_call)(_rpc->b, NOP_CONT, object));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *err = (((_binding->rx_union).publish_response).err);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_lock__rpc(struct skb_rpc_client *_rpc, const char *object, skb_errval_t *err)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).lock_call)(_rpc->b, NOP_CONT, object));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *err = (((_binding->rx_union).lock_response).err);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t skb_unlock__rpc(struct skb_rpc_client *_rpc, const char *object, skb_errval_t *err)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).unlock_call)(_rpc->b, NOP_CONT, object));
    if (err_is_fail(_err)) {
        goto out;
    }
    
    // wait for message to be sent and reply or error to be present
    while (((!(_rpc->reply_present)) || (!(((_rpc->b)->can_send)(_rpc->b)))) && ((_rpc->async_error) == SYS_ERR_OK)) {
        _err = event_dispatch(&(_rpc->rpc_waitset));
        if (err_is_fail(_err)) {
            _err = err_push(_err, LIB_ERR_EVENT_DISPATCH);
            goto out;
        }
    }
    
    if (err_is_fail(_rpc->async_error)) {
        _err = (_rpc->async_error);
        _rpc->async_error = SYS_ERR_OK;
        goto out;
    }
    
    // grab reply variables out of binding
    struct skb_binding *_binding = _rpc->b;
    *err = (((_binding->rx_union).unlock_response).err);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}


/*
 * Receive handlers
 */
static  void skb_run__rpc_rx_handler(struct skb_binding *_binding, char *output, char *str_error, int32_t int_error)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).run_response).output = output;
    ((_binding->rx_union).run_response).str_error = str_error;
    ((_binding->rx_union).run_response).int_error = int_error;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_get_identifier__rpc_rx_handler(struct skb_binding *_binding, uint64_t id)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).get_identifier_response).id = id;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_identify__rpc_rx_handler(struct skb_binding *_binding)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_get__rpc_rx_handler(struct skb_binding *_binding, char *output, char *error, skb_errval_t error_code)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).get_response).output = output;
    ((_binding->rx_union).get_response).error = error;
    ((_binding->rx_union).get_response).error_code = error_code;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_set__rpc_rx_handler(struct skb_binding *_binding, char *error, skb_errval_t error_code)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).set_response).error = error;
    ((_binding->rx_union).set_response).error_code = error_code;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_del__rpc_rx_handler(struct skb_binding *_binding, skb_errval_t error_code)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).del_response).error_code = error_code;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_subscribe__rpc_rx_handler(struct skb_binding *_binding, skb_errval_t err)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).subscribe_response).err = err;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_unsubscribe__rpc_rx_handler(struct skb_binding *_binding, skb_errval_t err)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).unsubscribe_response).err = err;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_publish__rpc_rx_handler(struct skb_binding *_binding, skb_errval_t err)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).publish_response).err = err;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_lock__rpc_rx_handler(struct skb_binding *_binding, skb_errval_t err)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).lock_response).err = err;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void skb_unlock__rpc_rx_handler(struct skb_binding *_binding, skb_errval_t err)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).unlock_response).err = err;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}


/*
 * RPC Vtable
 */
static  struct skb_rpc_vtbl skb_rpc_vtbl = {
    .run = skb_run__rpc,
    .get_identifier = skb_get_identifier__rpc,
    .identify = skb_identify__rpc,
    .get = skb_get__rpc,
    .set = skb_set__rpc,
    .del = skb_del__rpc,
    .subscribe = skb_subscribe__rpc,
    .unsubscribe = skb_unsubscribe__rpc,
    .publish = skb_publish__rpc,
    .lock = skb_lock__rpc,
    .unlock = skb_unlock__rpc,
};

/*
 * Error handler
 */
static  void skb_rpc_client_error(struct skb_binding *_binding, errval_t _err)
{
    // get RPC client state pointer
    struct skb_rpc_client *_rpc = _binding->st;
    
    if (_rpc->rpc_in_progress) {
        assert(err_is_fail(_err));
        _rpc->async_error = _err;
        // kick waitset with dummy event
        flounder_support_register(&(_rpc->rpc_waitset), &(_rpc->dummy_chanstate), dummy_event_closure, true);
    } else {
        USER_PANIC_ERR(_err, "async error in RPC");
    }
}


/*
 * Init function
 */
 errval_t skb_rpc_client_init(struct skb_rpc_client *rpc, struct skb_binding *binding)
{
    errval_t _err;
    
    // Setup state of RPC client object
    rpc->b = binding;
    rpc->reply_present = false;
    rpc->rpc_in_progress = false;
    rpc->async_error = SYS_ERR_OK;
    waitset_init(&(rpc->rpc_waitset));
    flounder_support_waitset_chanstate_init(&(rpc->dummy_chanstate));
    rpc->vtbl = skb_rpc_vtbl;
    binding->st = rpc;
    
    // Change waitset on binding
    _err = ((binding->change_waitset)(binding, &(rpc->rpc_waitset)));
    if (err_is_fail(_err)) {
        waitset_destroy(&(rpc->rpc_waitset));
        return(err_push(_err, FLOUNDER_ERR_CHANGE_WAITSET));
    }
    
    // Set RX handlers on binding object for RPCs
    (binding->rx_vtbl).run_response = skb_run__rpc_rx_handler;
    (binding->rx_vtbl).get_identifier_response = skb_get_identifier__rpc_rx_handler;
    (binding->rx_vtbl).identify_response = skb_identify__rpc_rx_handler;
    (binding->rx_vtbl).get_response = skb_get__rpc_rx_handler;
    (binding->rx_vtbl).set_response = skb_set__rpc_rx_handler;
    (binding->rx_vtbl).del_response = skb_del__rpc_rx_handler;
    (binding->rx_vtbl).subscribe_response = skb_subscribe__rpc_rx_handler;
    (binding->rx_vtbl).unsubscribe_response = skb_unsubscribe__rpc_rx_handler;
    (binding->rx_vtbl).publish_response = skb_publish__rpc_rx_handler;
    (binding->rx_vtbl).lock_response = skb_lock__rpc_rx_handler;
    (binding->rx_vtbl).unlock_response = skb_unlock__rpc_rx_handler;
    
    // Set error handler on binding object
    binding->error_handler = skb_rpc_client_error;
    
    return(SYS_ERR_OK);
}
