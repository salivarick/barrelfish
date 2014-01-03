#ifndef TRACE_DEFS_BARRELFISH__
#define TRACE_DEFS_BARRELFISH__

#define TRACE_SUBSYS_KERNEL	0
#define TRACE_EVENT_KERNEL_CSWITCH	0
#define TRACE_EVENT_KERNEL_BZERO	1
#define TRACE_EVENT_KERNEL_TIMER	2
#define TRACE_EVENT_KERNEL_TIMER_SYNC	3
#define TRACE_EVENT_KERNEL_SCHED_MAKE_RUNNABLE	4
#define TRACE_EVENT_KERNEL_SCHED_REMOVE	5
#define TRACE_EVENT_KERNEL_SCHED_YIELD	6
#define TRACE_EVENT_KERNEL_SCHED_SCHEDULE	7
#define TRACE_EVENT_KERNEL_SCHED_CURRENT	8

#define TRACE_SUBSYS_THREADS	1
#define TRACE_EVENT_THREADS_BARRIER_ENTER	0
#define TRACE_EVENT_THREADS_BARRIER_LEAVE	1
#define TRACE_EVENT_THREADS_MUTEX_LOCK_ENTER	2
#define TRACE_EVENT_THREADS_MUTEX_LOCK_LEAVE	3
#define TRACE_EVENT_THREADS_MUTEX_LOCK_NESTED_ENTER	4
#define TRACE_EVENT_THREADS_MUTEX_LOCK_NESTED_LEAVE	5
#define TRACE_EVENT_THREADS_MUTEX_TRYLOCK	6
#define TRACE_EVENT_THREADS_MUTEX_UNLOCK	7
#define TRACE_EVENT_THREADS_COND_WAIT_ENTER	8
#define TRACE_EVENT_THREADS_COND_WAIT_LEAVE	9
#define TRACE_EVENT_THREADS_COND_SIGNAL	10
#define TRACE_EVENT_THREADS_COND_BROADCAST	11
#define TRACE_EVENT_THREADS_SEM_WAIT_ENTER	12
#define TRACE_EVENT_THREADS_SEM_WAIT_LEAVE	13
#define TRACE_EVENT_THREADS_SEM_TRYWAIT	14
#define TRACE_EVENT_THREADS_SEM_POST	15

#define TRACE_SUBSYS_MEMSERV	2
#define TRACE_EVENT_MEMSERV_ALLOC	0
#define TRACE_EVENT_MEMSERV_PERCORE_INIT	1
#define TRACE_EVENT_MEMSERV_PERCORE_ALLOC	2
#define TRACE_EVENT_MEMSERV_PERCORE_ALLOC_COMPLETE	3

#define TRACE_SUBSYS_MEMTEST	3
#define TRACE_EVENT_MEMTEST_START	0
#define TRACE_EVENT_MEMTEST_STOP	1
#define TRACE_EVENT_MEMTEST_STARTED	2
#define TRACE_EVENT_MEMTEST_WAIT	3
#define TRACE_EVENT_MEMTEST_RUN	4
#define TRACE_EVENT_MEMTEST_DONE	5
#define TRACE_EVENT_MEMTEST_ALLOC	6
#define TRACE_EVENT_MEMTEST_MASTER	7
#define TRACE_EVENT_MEMTEST_WORKER	8

#define TRACE_SUBSYS_MONITOR	4
#define TRACE_EVENT_MONITOR_SPAN0	0
#define TRACE_EVENT_MONITOR_SPAN1	1
#define TRACE_EVENT_MONITOR_SPAN	2
#define TRACE_EVENT_MONITOR_PCREQ	3
#define TRACE_EVENT_MONITOR_PCREP	4
#define TRACE_EVENT_MONITOR_PCREQ_INTER	5
#define TRACE_EVENT_MONITOR_PCREPLY_INTER	6
#define TRACE_EVENT_MONITOR_URPC_BLOCK	7
#define TRACE_EVENT_MONITOR_URPC_UNBLOCK	8
#define TRACE_EVENT_MONITOR_REMOTE_CAP_RETYPE	9
#define TRACE_EVENT_MONITOR_REMOTE_CAP_RETYPE_RETRY	10
#define TRACE_EVENT_MONITOR_REMOTE_CAP_RETYPE_MSG	11
#define TRACE_EVENT_MONITOR_REMOTE_CAP_RETYPE_END	12
#define TRACE_EVENT_MONITOR_POLLING	13

#define TRACE_SUBSYS_CHIPS	5
#define TRACE_EVENT_CHIPS_LISTENCB	0

#define TRACE_SUBSYS_BFLIB	6
#define TRACE_EVENT_BFLIB_DUMMY	0

#define TRACE_SUBSYS_TWEED	7
#define TRACE_EVENT_TWEED_START	0
#define TRACE_EVENT_TWEED_END	1
#define TRACE_EVENT_TWEED_STEAL	2
#define TRACE_EVENT_TWEED_STEAL_END	3
#define TRACE_EVENT_TWEED_WAIT	4
#define TRACE_EVENT_TWEED_WAIT_END	5
#define TRACE_EVENT_TWEED_LOCKING	6
#define TRACE_EVENT_TWEED_LOCKING_END	7

#define TRACE_SUBSYS_ROUTE	8
#define TRACE_EVENT_ROUTE_BCAST_WITH_CCAST_SEND	0
#define TRACE_EVENT_ROUTE_BCAST_WITH_CCAST	1
#define TRACE_EVENT_ROUTE_RECV_BCAST_WITH_CCAST	2
#define TRACE_EVENT_ROUTE_RECV_CCAST	3
#define TRACE_EVENT_ROUTE_BENCH_START	4
#define TRACE_EVENT_ROUTE_BENCH_STOP	5
#define TRACE_EVENT_ROUTE_SEND_PING	6
#define TRACE_EVENT_ROUTE_SEND_PONG	7
#define TRACE_EVENT_ROUTE_RECV_PING	8
#define TRACE_EVENT_ROUTE_RECV_PONG	9
#define TRACE_EVENT_ROUTE_POLL	10

#define TRACE_SUBSYS_BENCH	9
#define TRACE_EVENT_BENCH_PCBENCH	0
#define TRACE_EVENT_BENCH_RXPING	1
#define TRACE_EVENT_BENCH_RXPONG	2

#define TRACE_SUBSYS_BOMP	10
#define TRACE_EVENT_BOMP_START	0
#define TRACE_EVENT_BOMP_STOP	1
#define TRACE_EVENT_BOMP_ITER	2

#define TRACE_SUBSYS_BARRIERS	11
#define TRACE_EVENT_BARRIERS_START	0
#define TRACE_EVENT_BARRIERS_STOP	1
#define TRACE_EVENT_BARRIERS_BARRIER_WAIT	2
#define TRACE_EVENT_BARRIERS_CENTRAL_REQ	3
#define TRACE_EVENT_BARRIERS_CENTRAL_REP	4
#define TRACE_EVENT_BARRIERS_TREE_REQ	5
#define TRACE_EVENT_BARRIERS_TREE_REP	6
#define TRACE_EVENT_BARRIERS_DIST	7
#define TRACE_EVENT_BARRIERS_SEND	8
#define TRACE_EVENT_BARRIERS_POLL1	9
#define TRACE_EVENT_BARRIERS_POLL2	10
#define TRACE_EVENT_BARRIERS_HEAP_REQ	11
#define TRACE_EVENT_BARRIERS_HEAP_REP	12
#define TRACE_EVENT_BARRIERS_SEQ_BCAST_REQ	13
#define TRACE_EVENT_BARRIERS_SEQ_BCAST_RECV	14
#define TRACE_EVENT_BARRIERS_TREE_BCAST_REQ	15
#define TRACE_EVENT_BARRIERS_TREE_BCAST_RECV	16

#define TRACE_SUBSYS_NET	12
#define TRACE_EVENT_NET_START	0
#define TRACE_EVENT_NET_STOP	1
#define TRACE_EVENT_NET_NI_AI	2
#define TRACE_EVENT_NET_NI_I	3
#define TRACE_EVENT_NET_NI_A	4
#define TRACE_EVENT_NET_NI_FILTER_FRAG	5
#define TRACE_EVENT_NET_NI_FILTER_EX_1	6
#define TRACE_EVENT_NET_NI_ARP	7
#define TRACE_EVENT_NET_NI_FILTER_EX_2	8
#define TRACE_EVENT_NET_NI_PKT_CPY_1	9
#define TRACE_EVENT_NET_NI_PKT_CPY_2	10
#define TRACE_EVENT_NET_NI_PKT_CPY_3	11
#define TRACE_EVENT_NET_NI_PKT_CPY_4	12
#define TRACE_EVENT_NET_NI_PKT_CPY	13
#define TRACE_EVENT_NET_NI_P	14
#define TRACE_EVENT_NET_NI_S	15
#define TRACE_EVENT_NET_AI_A	16
#define TRACE_EVENT_NET_AI_P	17
#define TRACE_EVENT_NET_AO_C	18
#define TRACE_EVENT_NET_AO_Q	19
#define TRACE_EVENT_NET_AO_S	20
#define TRACE_EVENT_NET_NO_A	21
#define TRACE_EVENT_NET_NO_S	22
#define TRACE_EVENT_NET_NO_TXD	23
#define TRACE_EVENT_NET_AIR_R	24
#define TRACE_EVENT_NET_AOR_S	25
#define TRACE_EVENT_NET_NIR_REG_PBUF	26

#define TRACE_SUBSYS_MULTIHOP	13
#define TRACE_EVENT_MULTIHOP_BENCH_START	0
#define TRACE_EVENT_MULTIHOP_BENCH_STOP	1
#define TRACE_EVENT_MULTIHOP_MESSAGE_SEND	2
#define TRACE_EVENT_MULTIHOP_MESSAGE_RECEIVE	3

#define TRACE_SUBSYS_BNET	14
#define TRACE_EVENT_BNET_START	0
#define TRACE_EVENT_BNET_STOP	1
#define TRACE_EVENT_BNET_DRV_SEE	2
#define TRACE_EVENT_BNET_APP_SEE	3
#define TRACE_EVENT_BNET_DRV_INT	4
#define TRACE_EVENT_BNET_DRV_POLL	5
#define TRACE_EVENT_BNET_YIELD	6
#define TRACE_EVENT_BNET_I	7

#define TRACE_SUBSYS_NNET	15
#define TRACE_EVENT_NNET_START	0
#define TRACE_EVENT_NNET_STOP	1
#define TRACE_EVENT_NNET_RXDRVSEE	2
#define TRACE_EVENT_NNET_RXESVSEE	3
#define TRACE_EVENT_NNET_RXESVFRGDONE	4
#define TRACE_EVENT_NNET_RXESVAPPFDONE	5
#define TRACE_EVENT_NNET_RXESVAPPCSTART	6
#define TRACE_EVENT_NNET_RXESVCOPIED	7
#define TRACE_EVENT_NNET_RXESVSPPDONE	8
#define TRACE_EVENT_NNET_RXESVAPPNOTIF	9
#define TRACE_EVENT_NNET_RXLWIINCOM	10
#define TRACE_EVENT_NNET_RXLWIRECH	11
#define TRACE_EVENT_NNET_RXAPPRCV	12
#define TRACE_EVENT_NNET_TXAPPSNT	13
#define TRACE_EVENT_NNET_TXLWISEE	14
#define TRACE_EVENT_NNET_TXLWIBFFENCE	15
#define TRACE_EVENT_NNET_TXLWIAFFENCE	16
#define TRACE_EVENT_NNET_TXLWIFLUSHED	17
#define TRACE_EVENT_NNET_TXLWIBDESC	18
#define TRACE_EVENT_NNET_TXLWISPPSND	19
#define TRACE_EVENT_NNET_TXLWISPPIDX	20
#define TRACE_EVENT_NNET_TXLWITXWORK	21
#define TRACE_EVENT_NNET_TXLWINOTIF	22
#define TRACE_EVENT_NNET_TXESVNOTIF	23
#define TRACE_EVENT_NNET_TXESVSPOW	24
#define TRACE_EVENT_NNET_TXESVSSPOW	25
#define TRACE_EVENT_NNET_TXDRVADD	26
#define TRACE_EVENT_NNET_TXDRVSEE	27
#define TRACE_EVENT_NNET_TX_TCP_WRITE	28
#define TRACE_EVENT_NNET_TX_TCP_OUTPUT	29
#define TRACE_EVENT_NNET_TX_TCP_RECV	30
#define TRACE_EVENT_NNET_TX_TCP_FREE	31
#define TRACE_EVENT_NNET_TX_MEMP	32
#define TRACE_EVENT_NNET_TX_MEMP_D	33

#define TRACE_SUBSYS_XMPL	16
#define TRACE_EVENT_XMPL_START	0
#define TRACE_EVENT_XMPL_STOP	1
#define TRACE_EVENT_XMPL_EV1	2
#define TRACE_EVENT_XMPL_EV2	3



#define TRACE_NUM_SUBSYSTEMS	17

#endif // TRACE_DEFS_BARRELFISH__