.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1091
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1092
    const-string v2, "LegacyVpnRunner"

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1063
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1066
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1071
    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1093
    # setter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->access$1602(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 1094
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "racoon"

    aput-object v3, v2, v4

    const-string v3, "mtpd"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1096
    new-array v2, v7, [[Ljava/lang/String;

    aput-object p3, v2, v4

    aput-object p4, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1097
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1105
    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1108
    :try_start_43
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_66

    .line 1114
    :goto_52
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1115
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1116
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1117
    return-void

    .line 1110
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_66
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_52
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private checkpoint(Z)V
    .registers 10
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 1150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1151
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    .line 1152
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1153
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1160
    :goto_13
    return-void

    .line 1154
    :cond_14
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_27

    .line 1155
    if-eqz p1, :cond_23

    const-wide/16 v2, 0xc8

    :cond_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_13

    .line 1157
    :cond_27
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1158
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .registers 29

    .prologue
    .line 1164
    const/16 v17, 0x0

    .line 1167
    .local v17, "initFinished":Z
    const/16 v24, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_13
    move/from16 v0, v18

    if-ge v15, v0, :cond_60

    aget-object v10, v8, v15

    .line 1171
    .local v10, "daemon":Ljava/lang/String;
    :goto_19
    invoke-static {v10}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5d

    .line 1172
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_29
    .catchall {:try_start_4 .. :try_end_28} :catchall_78

    goto :goto_19

    .line 1341
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    :catch_29
    move-exception v12

    .line 1342
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v24, "LegacyVpnRunner"

    const-string v25, "Aborting"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_78

    .line 1347
    if-nez v17, :cond_543

    .line 1348
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_51
    move/from16 v0, v18

    if-ge v15, v0, :cond_543

    aget-object v10, v8, v15

    .line 1349
    .restart local v10    # "daemon":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1348
    add-int/lit8 v15, v15, 0x1

    goto :goto_51

    .line 1170
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5d
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 1177
    .end local v10    # "daemon":Ljava/lang/String;
    :cond_60
    :try_start_60
    new-instance v23, Ljava/io/File;

    const-string v24, "/data/misc/vpn/state"

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v23, "state":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 1179
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_8f

    .line 1180
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string v25, "Cannot delete the state"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_78} :catch_29
    .catchall {:try_start_60 .. :try_end_78} :catchall_78

    .line 1347
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v23    # "state":Ljava/io/File;
    :catchall_78
    move-exception v24

    if-nez v17, :cond_566

    .line 1348
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_83
    move/from16 v0, v18

    if-ge v15, v0, :cond_566

    aget-object v10, v8, v15

    .line 1349
    .restart local v10    # "daemon":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1348
    add-int/lit8 v15, v15, 0x1

    goto :goto_83

    .line 1182
    .end local v10    # "daemon":Ljava/lang/String;
    .restart local v23    # "state":Ljava/io/File;
    :cond_8f
    :try_start_8f
    new-instance v24, Ljava/io/File;

    const-string v25, "/data/misc/vpn/abort"

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 1183
    const/16 v17, 0x1

    .line 1186
    const/16 v21, 0x0

    .line 1187
    .local v21, "restart":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v8, "arr$":[[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_a5
    move/from16 v0, v18

    if-ge v15, v0, :cond_b7

    aget-object v7, v8, v15

    .line 1188
    .local v7, "arguments":[Ljava/lang/String;
    if-nez v21, :cond_af

    if-eqz v7, :cond_b4

    :cond_af
    const/16 v21, 0x1

    .line 1187
    :goto_b1
    add-int/lit8 v15, v15, 0x1

    goto :goto_a5

    .line 1188
    :cond_b4
    const/16 v21, 0x0

    goto :goto_b1

    .line 1190
    .end local v7    # "arguments":[Ljava/lang/String;
    :cond_b7
    if-nez v21, :cond_fa

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_c2} :catch_29
    .catchall {:try_start_8f .. :try_end_c2} :catchall_78

    .line 1347
    if-nez v17, :cond_d8

    .line 1348
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_cc
    move/from16 v0, v18

    if-ge v15, v0, :cond_d8

    aget-object v10, v8, v15

    .line 1349
    .restart local v10    # "daemon":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1348
    add-int/lit8 v15, v15, 0x1

    goto :goto_cc

    .line 1354
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    :cond_d8
    if-eqz v17, :cond_f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f9

    .line 1355
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    .line 1358
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v21    # "restart":Z
    .end local v23    # "state":Ljava/io/File;
    :cond_f9
    :goto_f9
    return-void

    .line 1194
    .local v8, "arr$":[[Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v18    # "len$":I
    .restart local v21    # "restart":Z
    .restart local v23    # "state":Ljava/io/File;
    :cond_fa
    :try_start_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v26, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1197
    const/4 v14, 0x0

    .end local v8    # "arr$":[[Ljava/lang/String;
    .local v14, "i":I
    :goto_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_22e

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v7, v24, v14

    .line 1199
    .restart local v7    # "arguments":[Ljava/lang/String;
    if-nez v7, :cond_124

    .line 1197
    :cond_121
    add-int/lit8 v14, v14, 0x1

    goto :goto_108

    .line 1204
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v10, v24, v14

    .line 1205
    .restart local v10    # "daemon":Ljava/lang/String;
    const-string v24, "LegacyVpnRunner"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "systemservice start "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-static {v10}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1209
    :goto_149
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_159

    .line 1210
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_149

    .line 1214
    :cond_159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v24, v0

    new-instance v25, Landroid/net/LocalSocket;

    invoke-direct/range {v25 .. v25}, Landroid/net/LocalSocket;-><init>()V

    aput-object v25, v24, v14

    .line 1215
    new-instance v5, Landroid/net/LocalSocketAddress;

    sget-object v24, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v24

    invoke-direct {v5, v10, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_16f} :catch_29
    .catchall {:try_start_fa .. :try_end_16f} :catchall_78

    .line 1221
    .local v5, "address":Landroid/net/LocalSocketAddress;
    :goto_16f
    :try_start_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_17c} :catch_1bc
    .catchall {:try_start_16f .. :try_end_17c} :catchall_78

    .line 1228
    :try_start_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    const/16 v25, 0x1f4

    invoke-virtual/range {v24 .. v25}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 1232
    .local v19, "out":Ljava/io/OutputStream;
    move-object v8, v7

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_19a
    move/from16 v0, v18

    if-ge v15, v0, :cond_1ee

    aget-object v6, v8, v15

    .line 1233
    .local v6, "argument":Ljava/lang/String;
    sget-object v24, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 1234
    .local v9, "bytes":[B
    array-length v0, v9

    move/from16 v24, v0

    const v25, 0xffff

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1c7

    .line 1235
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "Argument is too large"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1223
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "bytes":[B
    .end local v19    # "out":Ljava/io/OutputStream;
    :catch_1bc
    move-exception v24

    .line 1226
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_16f

    .line 1237
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v9    # "bytes":[B
    .restart local v19    # "out":Ljava/io/OutputStream;
    :cond_1c7
    array-length v0, v9

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1238
    array-length v0, v9

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1239
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 1240
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1232
    add-int/lit8 v15, v15, 0x1

    goto :goto_19a

    .line 1242
    .end local v6    # "argument":Ljava/lang/String;
    .end local v9    # "bytes":[B
    :cond_1ee
    const/16 v24, 0xff

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1243
    const/16 v24, 0xff

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1244
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_20e} :catch_29
    .catchall {:try_start_17c .. :try_end_20e} :catchall_78

    move-result-object v16

    .line 1250
    .local v16, "in":Ljava/io/InputStream;
    :goto_20f
    :try_start_20f
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_212} :catch_588
    .catchall {:try_start_20f .. :try_end_212} :catchall_78

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_121

    .line 1256
    :goto_21b
    const/16 v24, 0x1

    :try_start_21d
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_20f

    .line 1269
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v7    # "arguments":[Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/OutputStream;
    :cond_225
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1261
    :cond_22e
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_27a

    .line 1263
    const/4 v14, 0x0

    :goto_235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_225

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v10, v24, v14

    .line 1265
    .restart local v10    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    if-eqz v24, :cond_277

    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_277

    .line 1266
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is dead"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1263
    :cond_277
    add-int/lit8 v14, v14, 0x1

    goto :goto_235

    .line 1273
    .end local v10    # "daemon":Ljava/lang/String;
    :cond_27a
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "\n"

    const/16 v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 1274
    .local v20, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_29f

    .line 1275
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string v25, "Cannot parse the state"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1279
    :cond_29f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v20, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v25, v20, v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_301

    .line 1284
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    const/16 v25, 0x2

    aget-object v25, v20, v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1288
    :cond_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_329

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_353

    .line 1289
    :cond_329
    const/16 v24, 0x3

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1290
    .local v11, "dnsServers":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_353

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1296
    .end local v11    # "dnsServers":Ljava/lang/String;
    :cond_353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_37b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_3a7

    .line 1297
    :cond_37b
    const/16 v24, 0x4

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 1298
    .local v22, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_3a7

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    const-string v25, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1304
    .end local v22    # "searchDomains":Ljava/lang/String;
    :cond_3a7
    const/16 v24, 0x5

    aget-object v13, v20, v24

    .line 1305
    .local v13, "endpoint":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_3ae} :catch_29
    .catchall {:try_start_21d .. :try_end_3ae} :catchall_78

    move-result v24

    if-nez v24, :cond_3e0

    .line 1307
    :try_start_3b1
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1308
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v24, v0

    if-eqz v24, :cond_454

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    new-instance v25, Landroid/net/RouteInfo;

    new-instance v26, Landroid/net/IpPrefix;

    const/16 v27, 0x20

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v27, 0x9

    invoke-direct/range {v25 .. v27}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b1 .. :try_end_3e0} :catch_481
    .catch Ljava/lang/Exception; {:try_start_3b1 .. :try_end_3e0} :catch_29
    .catchall {:try_start_3b1 .. :try_end_3e0} :catchall_78

    .line 1321
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_3e0
    :goto_3e0
    :try_start_3e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_3e7
    .catch Ljava/lang/Exception; {:try_start_3e0 .. :try_end_3e7} :catch_29
    .catchall {:try_start_3e0 .. :try_end_3e7} :catchall_78

    .line 1323
    :try_start_3e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1326
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_4c6

    .line 1330
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " is gone"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1340
    :catchall_451
    move-exception v24

    monitor-exit v25
    :try_end_453
    .catchall {:try_start_3e7 .. :try_end_453} :catchall_451

    :try_start_453
    throw v24
    :try_end_454
    .catch Ljava/lang/Exception; {:try_start_453 .. :try_end_454} :catch_29
    .catchall {:try_start_453 .. :try_end_454} :catchall_78

    .line 1310
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_454
    :try_start_454
    instance-of v0, v4, Ljava/net/Inet6Address;

    move/from16 v24, v0

    if-eqz v24, :cond_4aa

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    new-instance v25, Landroid/net/RouteInfo;

    new-instance v26, Landroid/net/IpPrefix;

    const/16 v27, 0x80

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v27, 0x9

    invoke-direct/range {v25 .. v27}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_454 .. :try_end_47f} :catch_481
    .catch Ljava/lang/Exception; {:try_start_454 .. :try_end_47f} :catch_29
    .catchall {:try_start_454 .. :try_end_47f} :catchall_78

    goto/16 :goto_3e0

    .line 1315
    .end local v4    # "addr":Ljava/net/InetAddress;
    :catch_481
    move-exception v12

    .line 1316
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_482
    const-string v24, "LegacyVpnRunner"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception constructing throw route to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a8
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_4a8} :catch_29
    .catchall {:try_start_482 .. :try_end_4a8} :catchall_78

    goto/16 :goto_3e0

    .line 1313
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_4aa
    :try_start_4aa
    const-string v24, "LegacyVpnRunner"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown IP address family for VPN endpoint: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4aa .. :try_end_4c4} :catch_481
    .catch Ljava/lang/Exception; {:try_start_4aa .. :try_end_4c4} :catch_29
    .catchall {:try_start_4aa .. :try_end_4c4} :catchall_78

    goto/16 :goto_3e0

    .line 1334
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_4c6
    :try_start_4c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$002(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/connectivity/Vpn;->agentConnect()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;)V

    .line 1339
    const-string v24, "LegacyVpnRunner"

    const-string v26, "Connected!"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    monitor-exit v25
    :try_end_50a
    .catchall {:try_start_4c6 .. :try_end_50a} :catchall_451

    .line 1347
    if-nez v17, :cond_520

    .line 1348
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_514
    move/from16 v0, v18

    if-ge v15, v0, :cond_520

    aget-object v10, v8, v15

    .line 1349
    .restart local v10    # "daemon":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1348
    add-int/lit8 v15, v15, 0x1

    goto :goto_514

    .line 1354
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    :cond_520
    if-eqz v17, :cond_538

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f9

    .line 1355
    :cond_538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_f9

    .line 1354
    .end local v13    # "endpoint":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "parameters":[Ljava/lang/String;
    .end local v21    # "restart":Z
    .end local v23    # "state":Ljava/io/File;
    .local v12, "e":Ljava/lang/Exception;
    :cond_543
    if-eqz v17, :cond_55b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    sget-object v25, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f9

    .line 1355
    :cond_55b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_f9

    .line 1354
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_566
    if-eqz v17, :cond_57e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_587

    .line 1355
    :cond_57e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    :cond_587
    throw v24

    .line 1253
    .restart local v5    # "address":Landroid/net/LocalSocketAddress;
    .restart local v7    # "arguments":[Ljava/lang/String;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v10    # "daemon":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "i$":I
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v18    # "len$":I
    .restart local v19    # "out":Ljava/io/OutputStream;
    .restart local v21    # "restart":Z
    .restart local v23    # "state":Ljava/io/File;
    :catch_588
    move-exception v24

    goto/16 :goto_21b
.end method

.method private monitorDaemons()V
    .registers 9

    .prologue
    .line 1365
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1387
    :goto_c
    return-void

    .line 1371
    :cond_d
    const-wide/16 v6, 0x7d0

    :try_start_f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1372
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_d

    .line 1373
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v3

    if-eqz v6, :cond_3c

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_25} :catch_3f
    .catchall {:try_start_f .. :try_end_25} :catchall_5b

    move-result v6

    if-eqz v6, :cond_3c

    .line 1381
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2c
    if-ge v4, v5, :cond_36

    aget-object v1, v0, v4

    .line 1382
    .local v1, "daemon":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1381
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1385
    .end local v1    # "daemon":Ljava/lang/String;
    :cond_36
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_c

    .line 1372
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1378
    .end local v3    # "i":I
    :catch_3f
    move-exception v2

    .line 1379
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_40
    const-string v6, "LegacyVpnRunner"

    const-string v7, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_5b

    .line 1381
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_4b
    if-ge v4, v5, :cond_55

    aget-object v1, v0, v4

    .line 1382
    .restart local v1    # "daemon":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1381
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 1385
    .end local v1    # "daemon":Ljava/lang/String;
    :cond_55
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_c

    .line 1381
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_5b
    move-exception v6

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_60
    if-ge v4, v5, :cond_6a

    aget-object v1, v0, v4

    .line 1382
    .restart local v1    # "daemon":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1381
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 1385
    .end local v1    # "daemon":Ljava/lang/String;
    :cond_6a
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    throw v6
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 5
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1121
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1124
    :cond_23
    return-void
.end method

.method public exit()V
    .registers 7

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1129
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .local v0, "arr$":[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 1130
    .local v3, "socket":Landroid/net/LocalSocket;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1129
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1132
    .end local v3    # "socket":Landroid/net/LocalSocket;
    :cond_11
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    .line 1134
    :try_start_16
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_21} :catch_22

    .line 1136
    :goto_21
    return-void

    .line 1135
    :catch_22
    move-exception v4

    goto :goto_21
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1141
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    .line 1143
    :try_start_a
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    .line 1145
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V

    .line 1146
    monitor-exit v1

    .line 1147
    return-void

    .line 1146
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v0
.end method