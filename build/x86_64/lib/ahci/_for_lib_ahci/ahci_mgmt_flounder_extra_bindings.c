/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: ahci_mgmt
 * INTEFACE FILE: ../if/ahci_mgmt.if
 * INTERFACE DESCRIPTION: AHCI Management Daemon
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
#include <if/ahci_mgmt_rpcclient_defs.h>

/*
 * RPC wrapper functions
 */
static  errval_t ahci_mgmt_list__rpc(struct ahci_mgmt_rpc_client *_rpc, uint8_t **port_ids, size_t *len)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).list_call)(_rpc->b, NOP_CONT));
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
    struct ahci_mgmt_binding *_binding = _rpc->b;
    *port_ids = (((_binding->rx_union).list_response).port_ids);
    *len = (((_binding->rx_union).list_response).len);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t ahci_mgmt_identify__rpc(struct ahci_mgmt_rpc_client *_rpc, uint8_t port_id, uint8_t **identify_data, size_t *data_len)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).identify_call)(_rpc->b, NOP_CONT, port_id));
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
    struct ahci_mgmt_binding *_binding = _rpc->b;
    *identify_data = (((_binding->rx_union).identify_response).identify_data);
    *data_len = (((_binding->rx_union).identify_response).data_len);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t ahci_mgmt_open__rpc(struct ahci_mgmt_rpc_client *_rpc, uint8_t port_id, ahci_mgmt_errval_t *status, struct capref *controller_mem, uint64_t *offset, uint32_t *capabilities)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).open_call)(_rpc->b, NOP_CONT, port_id));
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
    struct ahci_mgmt_binding *_binding = _rpc->b;
    *status = (((_binding->rx_union).open_response).status);
    *controller_mem = (((_binding->rx_union).open_response).controller_mem);
    *offset = (((_binding->rx_union).open_response).offset);
    *capabilities = (((_binding->rx_union).open_response).capabilities);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}

static  errval_t ahci_mgmt_close__rpc(struct ahci_mgmt_rpc_client *_rpc, uint8_t port_id, ahci_mgmt_errval_t *status)
{
    errval_t _err = SYS_ERR_OK;
    assert(!(_rpc->rpc_in_progress));
    assert((_rpc->async_error) == SYS_ERR_OK);
    _rpc->rpc_in_progress = true;
    _rpc->reply_present = false;
    
    // call send function
    _err = ((((_rpc->b)->tx_vtbl).close_call)(_rpc->b, NOP_CONT, port_id));
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
    struct ahci_mgmt_binding *_binding = _rpc->b;
    *status = (((_binding->rx_union).close_response).status);
    
    out:
    _rpc->rpc_in_progress = false;
    return(_err);
}


/*
 * Receive handlers
 */
static  void ahci_mgmt_list__rpc_rx_handler(struct ahci_mgmt_binding *_binding, uint8_t *port_ids, size_t len)
{
    // get RPC client state pointer
    struct ahci_mgmt_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).list_response).port_ids = port_ids;
    ((_binding->rx_union).list_response).len = len;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void ahci_mgmt_identify__rpc_rx_handler(struct ahci_mgmt_binding *_binding, uint8_t *identify_data, size_t data_len)
{
    // get RPC client state pointer
    struct ahci_mgmt_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).identify_response).identify_data = identify_data;
    ((_binding->rx_union).identify_response).data_len = data_len;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void ahci_mgmt_open__rpc_rx_handler(struct ahci_mgmt_binding *_binding, ahci_mgmt_errval_t status, struct capref controller_mem, uint64_t offset, uint32_t capabilities)
{
    // get RPC client state pointer
    struct ahci_mgmt_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).open_response).status = status;
    ((_binding->rx_union).open_response).controller_mem = controller_mem;
    ((_binding->rx_union).open_response).offset = offset;
    ((_binding->rx_union).open_response).capabilities = capabilities;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}

static  void ahci_mgmt_close__rpc_rx_handler(struct ahci_mgmt_binding *_binding, ahci_mgmt_errval_t status)
{
    // get RPC client state pointer
    struct ahci_mgmt_rpc_client *_rpc = _binding->st;
    
    // XXX: stash reply parameters in binding object
    // depending on the interconnect driver, they're probably already there
    ((_binding->rx_union).close_response).status = status;
    
    // notify RPC function, and we're done
    _rpc->reply_present = true;
}


/*
 * RPC Vtable
 */
static  struct ahci_mgmt_rpc_vtbl ahci_mgmt_rpc_vtbl = {
    .list = ahci_mgmt_list__rpc,
    .identify = ahci_mgmt_identify__rpc,
    .open = ahci_mgmt_open__rpc,
    .close = ahci_mgmt_close__rpc,
};

/*
 * Error handler
 */
static  void ahci_mgmt_rpc_client_error(struct ahci_mgmt_binding *_binding, errval_t _err)
{
    // get RPC client state pointer
    struct ahci_mgmt_rpc_client *_rpc = _binding->st;
    
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
 errval_t ahci_mgmt_rpc_client_init(struct ahci_mgmt_rpc_client *rpc, struct ahci_mgmt_binding *binding)
{
    errval_t _err;
    
    // Setup state of RPC client object
    rpc->b = binding;
    rpc->reply_present = false;
    rpc->rpc_in_progress = false;
    rpc->async_error = SYS_ERR_OK;
    waitset_init(&(rpc->rpc_waitset));
    flounder_support_waitset_chanstate_init(&(rpc->dummy_chanstate));
    rpc->vtbl = ahci_mgmt_rpc_vtbl;
    binding->st = rpc;
    
    // Change waitset on binding
    _err = ((binding->change_waitset)(binding, &(rpc->rpc_waitset)));
    if (err_is_fail(_err)) {
        waitset_destroy(&(rpc->rpc_waitset));
        return(err_push(_err, FLOUNDER_ERR_CHANGE_WAITSET));
    }
    
    // Set RX handlers on binding object for RPCs
    (binding->rx_vtbl).list_response = ahci_mgmt_list__rpc_rx_handler;
    (binding->rx_vtbl).identify_response = ahci_mgmt_identify__rpc_rx_handler;
    (binding->rx_vtbl).open_response = ahci_mgmt_open__rpc_rx_handler;
    (binding->rx_vtbl).close_response = ahci_mgmt_close__rpc_rx_handler;
    
    // Set error handler on binding object
    binding->error_handler = ahci_mgmt_rpc_client_error;
    
    return(SYS_ERR_OK);
}

