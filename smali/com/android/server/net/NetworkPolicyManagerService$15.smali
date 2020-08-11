.class Lcom/android/server/net/NetworkPolicyManagerService$15;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2275
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_15a

    .line 2370
    :pswitch_7
    const/4 v14, 0x0

    :goto_8
    return v14

    .line 2277
    :pswitch_9
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 2278
    .local v12, "uid":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 2279
    .local v13, "uidRules":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 2280
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v4, :cond_36

    .line 2281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 2282
    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_33

    .line 2284
    :try_start_30
    invoke-interface {v5, v12, v13}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_14d

    .line 2280
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2289
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2290
    const/4 v14, 0x1

    goto :goto_8

    .line 2293
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v12    # "uid":I
    .end local v13    # "uidRules":I
    :pswitch_43
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    move-object v8, v14

    check-cast v8, [Ljava/lang/String;

    .line 2294
    .local v8, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 2295
    .restart local v4    # "length":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_59
    if-ge v2, v4, :cond_71

    .line 2296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 2297
    .restart local v5    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_6e

    .line 2299
    :try_start_6b
    invoke-interface {v5, v8}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_150

    .line 2295
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 2304
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2305
    const/4 v14, 0x1

    goto :goto_8

    .line 2308
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v8    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_7e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 2310
    .local v3, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v15, v14, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2312
    :try_start_92
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_bd

    move-result v14

    if-eqz v14, :cond_b9

    .line 2316
    :try_start_a0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v14

    invoke-interface {v14}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_ab} :catch_157
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_bd

    .line 2321
    :goto_ab
    :try_start_ab
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2324
    :cond_b9
    monitor-exit v15

    .line 2325
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 2324
    :catchall_bd
    move-exception v14

    monitor-exit v15
    :try_end_bf
    .catchall {:try_start_ab .. :try_end_bf} :catchall_bd

    throw v14

    .line 2328
    .end local v3    # "iface":Ljava/lang/String;
    :pswitch_c0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eqz v14, :cond_ec

    const/4 v9, 0x1

    .line 2329
    .local v9, "restrictBackground":Z
    :goto_c7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 2330
    .restart local v4    # "length":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d4
    if-ge v2, v4, :cond_ee

    .line 2331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 2332
    .restart local v5    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_e9

    .line 2334
    :try_start_e6
    invoke-interface {v5, v9}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_e9} :catch_153

    .line 2330
    :cond_e9
    :goto_e9
    add-int/lit8 v2, v2, 0x1

    goto :goto_d4

    .line 2328
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v9    # "restrictBackground":Z
    :cond_ec
    const/4 v9, 0x0

    goto :goto_c7

    .line 2339
    .restart local v2    # "i":I
    .restart local v4    # "length":I
    .restart local v9    # "restrictBackground":Z
    :cond_ee
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2340
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 2343
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v9    # "restrictBackground":Z
    :pswitch_fc
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2347
    .local v6, "lowestRule":J
    const-wide/16 v14, 0x3e8

    :try_start_108
    div-long v10, v6, v14

    .line 2348
    .local v10, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v14

    invoke-interface {v14, v10, v11}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_108 .. :try_end_115} :catch_155

    .line 2352
    .end local v10    # "persistThreshold":J
    :goto_115
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 2355
    .end local v6    # "lowestRule":J
    :pswitch_118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2356
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 2360
    :pswitch_122
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 2361
    .restart local v3    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v15, v14, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2363
    :try_start_136
    const-string v14, "NetworkPolicy"

    const-string v16, " MSG_INTERFACE_DOWN call updateNetworkRulesLocked"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2365
    monitor-exit v15

    .line 2366
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 2365
    :catchall_14a
    move-exception v14

    monitor-exit v15
    :try_end_14c
    .catchall {:try_start_136 .. :try_end_14c} :catchall_14a

    throw v14

    .line 2285
    .end local v3    # "iface":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "length":I
    .restart local v5    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v12    # "uid":I
    .restart local v13    # "uidRules":I
    :catch_14d
    move-exception v14

    goto/16 :goto_33

    .line 2300
    .end local v12    # "uid":I
    .end local v13    # "uidRules":I
    .restart local v8    # "meteredIfaces":[Ljava/lang/String;
    :catch_150
    move-exception v14

    goto/16 :goto_6e

    .line 2335
    .end local v8    # "meteredIfaces":[Ljava/lang/String;
    .restart local v9    # "restrictBackground":Z
    :catch_153
    move-exception v14

    goto :goto_e9

    .line 2349
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v9    # "restrictBackground":Z
    .restart local v6    # "lowestRule":J
    :catch_155
    move-exception v14

    goto :goto_115

    .line 2317
    .end local v6    # "lowestRule":J
    .restart local v3    # "iface":Ljava/lang/String;
    :catch_157
    move-exception v14

    goto/16 :goto_ab

    .line 2275
    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_9
        :pswitch_43
        :pswitch_7
        :pswitch_7
        :pswitch_7e
        :pswitch_c0
        :pswitch_fc
        :pswitch_118
        :pswitch_122
    .end packed-switch
.end method
