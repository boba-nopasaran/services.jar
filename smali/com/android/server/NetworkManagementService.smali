.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z = false

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final NETD_SOCKET_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field public static final PERMISSION_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final PERMISSION_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementService"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBspPackage:Z

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private final mDaemonHandler:Landroid/os/Handler;

.field private final mFgHandler:Landroid/os/Handler;

.field private volatile mFirewallEnabled:Z

.field private mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mMobileActivityFromRadio:Z

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQuotaLock:Ljava/lang/Object;

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private final mThread:Ljava/lang/Thread;

.field private mUidRejectOnQuota:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 201
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 203
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 206
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 212
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 214
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 234
    iput-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 235
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 237
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 249
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    .line 254
    const-string v0, "simulator"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 255
    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 256
    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 257
    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 258
    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 297
    :goto_76
    return-void

    .line 267
    :cond_77
    const/4 v6, 0x0

    .line 269
    .local v6, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const/16 v3, 0xa

    const-string v4, "NetdConnector"

    const/16 v5, 0xa0

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 272
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "NetdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 276
    new-instance v0, Lcom/android/server/NetworkManagementService$1;

    const v1, 0x7fffffff

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;ILandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 286
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 287
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_ce

    .line 288
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x2000

    invoke-virtual {v8, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 293
    :cond_ce
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 295
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBspPackage:Z

    .line 296
    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBspPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBspPackage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76
.end method

.method static synthetic access$100(Lcom/android/server/NetworkManagementService;IIJZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Z

    .prologue
    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # [Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/RouteInfo;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private convertQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 2395
    if-nez p1, :cond_5

    .line 2399
    .end local p1    # "s":Ljava/lang/String;
    :goto_4
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "netd"

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Lcom/android/server/NetworkManagementService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    .local v1, "service":Lcom/android/server/NetworkManagementService;
    iget-object v0, v1, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 304
    .local v0, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, v1, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 308
    return-object v1
.end method

.method private static enforceSystemUid()V
    .registers 3

    .prologue
    .line 1954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1955
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1956
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1958
    :cond_10
    return-void
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1329
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1330
    .local v2, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1331
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1333
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_27
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    .line 327
    :goto_8
    return-object v0

    .line 325
    :cond_9
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 327
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    goto :goto_8

    .line 328
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private getInterfaceThrottle(Ljava/lang/String;Z)I
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rx"    # Z

    .prologue
    .line 2684
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "interface"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "getthrottle"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v6, 0x2

    if-eqz p2, :cond_2a

    const-string v2, "rx"

    :goto_14
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_19} :catch_2d

    move-result-object v1

    .line 2689
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    if-eqz p2, :cond_33

    .line 2690
    const/16 v2, 0xda

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2696
    :goto_21
    :try_start_21
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_28} :catch_39

    move-result v2

    return v2

    .line 2684
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_2a
    :try_start_2a
    const-string v2, "tx"
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2a .. :try_end_2c} :catch_2d

    goto :goto_14

    .line 2685
    :catch_2d
    move-exception v0

    .line 2686
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 2692
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_33
    const/16 v2, 0xdb

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    goto :goto_21

    .line 2697
    :catch_39
    move-exception v0

    .line 2698
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1453
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 1459
    :pswitch_7
    const-string v0, "open"

    :goto_9
    return-object v0

    .line 1455
    :pswitch_a
    const-string v0, "wpa-psk"

    goto :goto_9

    .line 1457
    :pswitch_d
    const-string v0, "wpa2-psk"

    goto :goto_9

    .line 1453
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method private isBspPackage()Z
    .registers 4

    .prologue
    .line 2819
    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBspPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBspPackage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBspPackage:Z

    return v0
.end method

.method private isWifi(Ljava/lang/String;)Z
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2651
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2654
    .local v4, "tetherableWifiRegexs":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_10
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    .line 2655
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    .line 2657
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1b
    return v5

    .line 2654
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2657
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1f
    const/4 v5, 0x0

    goto :goto_1b
.end method

.method private modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 2128
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2134
    return-void

    .line 2131
    :catch_22
    move-exception v0

    .line 2132
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1338
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "nat"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-direct {v1, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1340
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 1342
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-nez v6, :cond_24

    .line 1343
    const-string v7, "0"

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1358
    :cond_1e
    :try_start_1e
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_23} :catch_76

    .line 1362
    return-void

    .line 1347
    :cond_24
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/NetworkManagementService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1349
    .local v5, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1350
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 1351
    .local v4, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    invoke-static {v7, v8}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1353
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 1359
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ia":Ljava/net/InterfaceAddress;
    .end local v5    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :catch_76
    move-exception v2

    .line 1360
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method private modifyNatIpv6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 2442
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "IPv6Tether"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-direct {v1, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2444
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 2446
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-nez v6, :cond_24

    .line 2447
    const-string v7, "0"

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2460
    :cond_1e
    :try_start_1e
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_23} :catch_76

    .line 2464
    return-void

    .line 2449
    :cond_24
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/NetworkManagementService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 2451
    .local v5, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2452
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 2453
    .local v4, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    invoke-static {v7, v8}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2455
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 2461
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ia":Ljava/net/InterfaceAddress;
    .end local v5    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :catch_76
    move-exception v2

    .line 2462
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1027
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "route"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1033
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1035
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_62

    .line 1050
    :cond_37
    :goto_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_37 .. :try_end_3c} :catch_5b

    .line 1054
    return-void

    .line 1037
    :sswitch_3d
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1038
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_37

    .line 1042
    :sswitch_4f
    const-string v2, "unreachable"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_37

    .line 1045
    :sswitch_55
    const-string v2, "throw"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_37

    .line 1051
    :catch_5b
    move-exception v1

    .line 1052
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1035
    nop

    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_3d
        0x7 -> :sswitch_4f
        0x9 -> :sswitch_55
    .end sparse-switch
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 601
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 603
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 605
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 603
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 611
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 613
    return-void

    .line 611
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 607
    :catch_24
    move-exception v2

    goto :goto_14

    .line 606
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 583
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 585
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 587
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 585
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 593
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 595
    return-void

    .line 593
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 589
    :catch_24
    move-exception v2

    goto :goto_14

    .line 588
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 386
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 388
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 386
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 394
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 396
    return-void

    .line 394
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 390
    :catch_24
    move-exception v2

    goto :goto_14

    .line 389
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceClassActivity(IIJZ)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "fromRadio"    # Z

    .prologue
    const/4 v1, 0x1

    .line 446
    const-string v5, "NetworkManagementService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyInterfaceClassActivity, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " powerState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tsNanos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fromRadio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v5, "NetworkManagementService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileActivityFromRadio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    .line 450
    .local v2, "isMobile":Z
    if-eqz v2, :cond_6c

    .line 451
    if-nez p5, :cond_97

    .line 452
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v5, :cond_5f

    .line 456
    iget p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 461
    :cond_5f
    :goto_5f
    iget v5, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    if-eq v5, p2, :cond_6c

    .line 462
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 464
    :try_start_65
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJ)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6c} :catch_ca

    .line 470
    :cond_6c
    :goto_6c
    sget v5, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p2, v5, :cond_74

    sget v5, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p2, v5, :cond_9a

    .line 473
    .local v1, "isActive":Z
    :cond_74
    :goto_74
    if-eqz v2, :cond_7c

    if-nez p5, :cond_7c

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-nez v5, :cond_a1

    .line 478
    :cond_7c
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 480
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_83
    if-ge v0, v3, :cond_9c

    .line 482
    :try_start_85
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkManagementEventObserver;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_94} :catch_c8
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_94} :catch_c6
    .catchall {:try_start_85 .. :try_end_94} :catchall_bc

    .line 480
    :goto_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 459
    .end local v0    # "i":I
    .end local v1    # "isActive":Z
    .end local v3    # "length":I
    :cond_97
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    goto :goto_5f

    .line 470
    :cond_9a
    const/4 v1, 0x0

    goto :goto_74

    .line 489
    .restart local v0    # "i":I
    .restart local v1    # "isActive":Z
    .restart local v3    # "length":I
    :cond_9c
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 493
    .end local v0    # "i":I
    .end local v3    # "length":I
    :cond_a1
    const/4 v4, 0x0

    .line 494
    .local v4, "report":Z
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 495
    :try_start_a5
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 498
    const/4 v1, 0x1

    .line 500
    :cond_ae
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-eq v5, v1, :cond_b5

    .line 501
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 502
    move v4, v1

    .line 504
    :cond_b5
    monitor-exit v6
    :try_end_b6
    .catchall {:try_start_a5 .. :try_end_b6} :catchall_c3

    .line 505
    if-eqz v4, :cond_bb

    .line 506
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    .line 508
    :cond_bb
    return-void

    .line 489
    .end local v4    # "report":Z
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :catchall_bc
    move-exception v5

    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5

    .line 504
    .end local v0    # "i":I
    .end local v3    # "length":I
    .restart local v4    # "report":Z
    :catchall_c3
    move-exception v5

    :try_start_c4
    monitor-exit v6
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v5

    .line 485
    .end local v4    # "report":Z
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :catch_c6
    move-exception v5

    goto :goto_94

    .line 484
    :catch_c8
    move-exception v5

    goto :goto_94

    .line 465
    .end local v0    # "i":I
    .end local v1    # "isActive":Z
    .end local v3    # "length":I
    :catch_ca
    move-exception v5

    goto :goto_6c
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 619
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 621
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 623
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 621
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 630
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 632
    return-void

    .line 630
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 626
    :catch_24
    move-exception v2

    goto :goto_14

    .line 625
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 368
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 370
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 368
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 376
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 378
    return-void

    .line 376
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 372
    :catch_24
    move-exception v2

    goto :goto_14

    .line 371
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 402
    const-string v2, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyInterfaceRemoved, iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 411
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    if-ge v0, v1, :cond_39

    .line 413
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_36} :catch_46
    .catchall {:try_start_2b .. :try_end_36} :catchall_3f

    .line 411
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 419
    :cond_39
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 421
    return-void

    .line 419
    :catchall_3f
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 415
    :catch_46
    move-exception v2

    goto :goto_36

    .line 414
    :catch_48
    move-exception v2

    goto :goto_36
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 349
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 351
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 349
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 357
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 359
    return-void

    .line 357
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 353
    :catch_24
    move-exception v2

    goto :goto_14

    .line 352
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 429
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 431
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 429
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 437
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 439
    return-void

    .line 437
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 433
    :catch_24
    move-exception v2

    goto :goto_14

    .line 432
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 638
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 640
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_2d

    .line 642
    :try_start_9
    const-string v2, "updated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 643
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p2}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 640
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 645
    :cond_1f
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p2}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2a} :catch_3a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_33

    goto :goto_1c

    .line 647
    :catch_2b
    move-exception v2

    goto :goto_1c

    .line 652
    :cond_2d
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 654
    return-void

    .line 652
    :catchall_33
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 648
    :catch_3a
    move-exception v2

    goto :goto_1c
.end method

.method private prepareNativeDaemon()V
    .registers 15

    .prologue
    .line 515
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    .line 518
    new-instance v9, Ljava/io/File;

    const-string v10, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    .line 519
    .local v4, "hasKernelSupport":Z
    if-eqz v4, :cond_a4

    .line 520
    const-string v9, "NetworkManagementService"

    const-string v10, "enabling bandwidth control"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :try_start_17
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "bandwidth"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "enable"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 523
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_17 .. :try_end_29} :catch_9b

    .line 533
    :goto_29
    const-string v10, "net.qtaguid_enabled"

    iget-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v9, :cond_ad

    const-string v9, "1"

    :goto_31
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v9, :cond_3f

    .line 537
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_162

    .line 543
    :cond_3f
    :goto_3f
    iget-object v11, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v11

    .line 544
    :try_start_42
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 545
    .local v7, "size":I
    if-lez v7, :cond_b0

    .line 546
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active quota rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 548
    .local v1, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 549
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 550
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p0, v9, v12, v13}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    goto :goto_78

    .line 573
    .end local v1    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "size":I
    :catchall_98
    move-exception v9

    monitor-exit v11
    :try_end_9a
    .catchall {:try_start_42 .. :try_end_9a} :catchall_98

    throw v9

    .line 524
    :catch_9b
    move-exception v2

    .line 527
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "NetworkManagementService"

    const-string v10, "problem enabling bandwidth controls"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 530
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_a4
    const-string v9, "NetworkManagementService"

    const-string v10, "not enabling bandwidth control"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 533
    :cond_ad
    const-string v9, "0"

    goto :goto_31

    .line 554
    .restart local v7    # "size":I
    :cond_b0
    :try_start_b0
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 555
    if-lez v7, :cond_106

    .line 556
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active alert rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 558
    .local v0, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 559
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_e6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_106

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 560
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p0, v9, v12, v13}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_e6

    .line 564
    .end local v0    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_106
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 565
    if-lez v7, :cond_14a

    .line 566
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active uid rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 568
    .local v8, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 569
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_136
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_14a

    .line 570
    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/server/NetworkManagementService;->setUidNetworkRules(IZ)V

    .line 569
    add-int/lit8 v5, v5, 0x1

    goto :goto_136

    .line 573
    .end local v5    # "i":I
    .end local v8    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    :cond_14a
    monitor-exit v11
    :try_end_14b
    .catchall {:try_start_b0 .. :try_end_14b} :catchall_98

    .line 576
    iget-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    if-nez v9, :cond_15b

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_160

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isFileUsable()Z

    move-result v9

    if-eqz v9, :cond_160

    :cond_15b
    const/4 v9, 0x1

    :goto_15c
    invoke-virtual {p0, v9}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 577
    return-void

    .line 576
    :cond_160
    const/4 v9, 0x0

    goto :goto_15c

    .line 538
    .end local v7    # "size":I
    :catch_162
    move-exception v9

    goto/16 :goto_3f
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v1, 0x0

    .line 1058
    .local v1, "fstream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_4a
    .catchall {:try_start_6 .. :try_end_b} :catchall_3c

    .line 1062
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1063
    .local v3, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1068
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_32

    .line 1069
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_2a
    .catchall {:try_start_b .. :try_end_29} :catchall_47

    goto :goto_1a

    .line 1071
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v6

    move-object v1, v2

    .line 1074
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    :goto_2c
    if-eqz v1, :cond_31

    .line 1076
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_43

    .line 1081
    :cond_31
    :goto_31
    return-object v4

    .line 1074
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_32
    if-eqz v2, :cond_4c

    .line 1076
    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    move-object v1, v2

    .line 1077
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31

    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :catch_39
    move-exception v6

    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31

    .line 1074
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_3c
    move-exception v6

    :goto_3d
    if-eqz v1, :cond_42

    .line 1076
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_45

    .line 1077
    :cond_42
    :goto_42
    throw v6

    :catch_43
    move-exception v6

    goto :goto_31

    :catch_45
    move-exception v7

    goto :goto_42

    .line 1074
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :catchall_47
    move-exception v6

    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3d

    .line 1071
    :catch_4a
    move-exception v6

    goto :goto_2c

    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4c
    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31
.end method

.method private reportNetworkActive()V
    .registers 5

    .prologue
    .line 2015
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2017
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 2019
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkActivityListener;

    invoke-interface {v2}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 2017
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2025
    :cond_17
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2027
    return-void

    .line 2025
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 2021
    :catch_24
    move-exception v2

    goto :goto_14

    .line 2020
    :catch_26
    move-exception v2

    goto :goto_14
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;II)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    .prologue
    .line 1516
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1521
    :try_start_c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1522
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1e

    .line 1524
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 1525
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_5d

    .line 1548
    :goto_1d
    return-void

    .line 1529
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "add"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_3e} :catch_60
    .catchall {:try_start_1e .. :try_end_3e} :catchall_5d

    .line 1534
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v4, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1538
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 1540
    :cond_51
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$2;

    invoke-direct {v4, p0, p3}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1547
    monitor-exit v3

    goto :goto_1d

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_5d
    move-exception v2

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_5d

    throw v2

    .line 1531
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_60
    move-exception v0

    .line 1532
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_61
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5d
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2266
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const-string v2, "add"

    const-string v3, "local"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 2269
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2270
    const-string v2, "add"

    const-string v3, "local"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto :goto_b

    .line 2273
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_25
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 2119
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    .prologue
    .line 2138
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v3, "network"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "route"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "legacy"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "add"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .line 2144
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2146
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 2147
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2151
    :cond_72
    :try_start_72
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_77
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_72 .. :try_end_77} :catch_78

    .line 2155
    return-void

    .line 2152
    :catch_78
    move-exception v1

    .line 2153
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1018
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1019
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 1836
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 1838
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string v6, "users"

    aput-object v6, v2, v5

    .line 1839
    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v2, v5

    .line 1840
    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1841
    const/4 v0, 0x3

    .line 1843
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, p2

    if-ge v4, v5, :cond_4a

    .line 1844
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 1845
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_35

    array-length v5, v2

    if-ne v1, v5, :cond_4b

    .line 1847
    :cond_35
    :try_start_35
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_40} :catch_44

    .line 1851
    const/4 v0, 0x3

    .line 1843
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1848
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_44
    move-exception v3

    .line 1849
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 1854
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4a
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4b
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_41
.end method

.method public allowProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 2244
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "protect"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "allow"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_25

    .line 2251
    return-void

    .line 2248
    :catch_25
    move-exception v0

    .line 2249
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "tty"    # Ljava/lang/String;
    .param p2, "localAddr"    # Ljava/lang/String;
    .param p3, "remoteAddr"    # Ljava/lang/String;
    .param p4, "dns1Addr"    # Ljava/lang/String;
    .param p5, "dns2Addr"    # Ljava/lang/String;

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppd"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "attach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_47} :catch_48

    .line 1408
    return-void

    .line 1405
    :catch_48
    move-exception v0

    .line 1406
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearDefaultNetId()V
    .registers 7

    .prologue
    .line 2170
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "clear"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 2177
    return-void

    .line 2174
    :catch_1e
    move-exception v0

    .line 2175
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearFirewallChain(Ljava/lang/String;)V
    .registers 8
    .param p1, "chain"    # Ljava/lang/String;

    .prologue
    .line 2750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clear_fw_chain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_12
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_12} :catch_13

    .line 2754
    return-void

    .line 2751
    :catch_13
    move-exception v0

    .line 2752
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearaddrs"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 983
    return-void

    .line 980
    :catch_1c
    move-exception v0

    .line 981
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearIotFirewall()V
    .registers 7

    .prologue
    .line 2829
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clear_nsiot_firewall"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_19

    .line 2835
    return-void

    .line 2832
    :catch_19
    move-exception v0

    .line 2833
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearPermission([I)V
    .registers 10
    .param p1, "uids"    # [I

    .prologue
    .line 2221
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2224
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string v6, "permission"

    aput-object v6, v2, v5

    .line 2225
    const/4 v5, 0x1

    const-string v6, "user"

    aput-object v6, v2, v5

    .line 2226
    const/4 v5, 0x2

    const-string v6, "clear"

    aput-object v6, v2, v5

    .line 2227
    const/4 v0, 0x3

    .line 2229
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    array-length v5, p1

    if-ge v4, v5, :cond_48

    .line 2230
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2231
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_33

    array-length v5, v2

    if-ne v1, v5, :cond_49

    .line 2233
    :cond_33
    :try_start_33
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_33 .. :try_end_3e} :catch_42

    .line 2237
    const/4 v0, 0x3

    .line 2229
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 2234
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_42
    move-exception v3

    .line 2235
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2240
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_48
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_49
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_3f
.end method

.method public clearRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2511
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "IPv6Tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearroute"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 2521
    return-void

    .line 2516
    :catch_1f
    move-exception v0

    .line 2517
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRouteIpv6 got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for clearRouteIpv6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearSipInfo(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2810
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "NetInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearsip"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 2816
    return-void

    .line 2813
    :catch_1c
    move-exception v0

    .line 2814
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearSourceRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2549
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "IPv6Tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearsroute"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 2559
    return-void

    .line 2554
    :catch_1f
    move-exception v0

    .line 2555
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSourceRouteIpv6 got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for clearSourceRouteIpv6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearVolteIotFirewall(Ljava/lang/String;)V
    .registers 8
    .param p1, "ifc"    # Ljava/lang/String;

    .prologue
    .line 2922
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clear_volte_nsiot_firewall"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 2928
    return-void

    .line 2925
    :catch_1c
    move-exception v0

    .line 2926
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public createPhysicalNetwork(ILjava/lang/String;)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 2081
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    if-eqz p2, :cond_25

    .line 2085
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "create"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2092
    :goto_24
    return-void

    .line 2087
    :cond_25
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "create"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_3b} :catch_3c

    goto :goto_24

    .line 2089
    :catch_3c
    move-exception v0

    .line 2090
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualNetwork(IZZ)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "hasDNS"    # Z
    .param p3, "secure"    # Z

    .prologue
    .line 2096
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "network"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "create"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "vpn"

    aput-object v5, v4, v1

    const/4 v5, 0x3

    if-eqz p2, :cond_33

    const-string v1, "1"

    :goto_26
    aput-object v1, v4, v5

    const/4 v5, 0x4

    if-eqz p3, :cond_36

    const-string v1, "1"

    :goto_2d
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2104
    return-void

    .line 2099
    :cond_33
    const-string v1, "0"

    goto :goto_26

    :cond_36
    const-string v1, "0"
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_38} :catch_39

    goto :goto_2d

    .line 2101
    :catch_39
    move-exception v0

    .line 2102
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public denyProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 2255
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "protect"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "deny"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_25

    .line 2262
    return-void

    .line 2259
    :catch_25
    move-exception v0

    .line 2260
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public detachPppd(Ljava/lang/String;)V
    .registers 8
    .param p1, "tty"    # Ljava/lang/String;

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "detach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 1418
    return-void

    .line 1415
    :catch_1c
    move-exception v0

    .line 1416
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "disable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 1003
    return-void

    .line 1000
    :catch_21
    move-exception v0

    .line 1001
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableMultiRouter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2350
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "MultiRouter"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "disable"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 2356
    return-void

    .line 2353
    :catch_1f
    move-exception v0

    .line 2354
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :try_start_9
    const-string v1, "disable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_e} :catch_f

    .line 1382
    return-void

    .line 1379
    :catch_f
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2569
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    :try_start_9
    const-string v1, "disable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNatIpv6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_e} :catch_f

    .line 2579
    return-void

    .line 2574
    :catch_f
    move-exception v0

    .line 2575
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNatIpv6 got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for disabling Ipv6 NAT interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disablePPPOE()V
    .registers 7

    .prologue
    .line 2758
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppoectl"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_19

    .line 2764
    return-void

    .line 2761
    :catch_19
    move-exception v0

    .line 2762
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2039
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const-string v5, "NetworkManagementService NativeDaemonConnector Log:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2043
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2045
    const-string v5, "Bandwidth control enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2046
    const-string v5, "mMobileActivityFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2047
    const-string v5, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2048
    const-string v5, "mNetworkActive="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2050
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2051
    :try_start_41
    const-string v5, "Active quota ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    const-string v5, "Active alert ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_84

    .line 2055
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    monitor-enter v6

    .line 2056
    :try_start_61
    const-string v5, "UID reject on quota ifaces: ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 2058
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6d
    if-ge v1, v4, :cond_87

    .line 2059
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2060
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_81

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_61 .. :try_end_81} :catchall_e6

    .line 2058
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 2053
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_84
    move-exception v5

    :try_start_85
    monitor-exit v6
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v5

    .line 2062
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_87
    :try_start_87
    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_e6

    .line 2065
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2066
    :try_start_90
    const-string v5, "Idle timers:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2068
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2070
    .local v3, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string v5, "    timeout="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2071
    const-string v5, " type="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2072
    const-string v5, " networkCount="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_9f

    .line 2074
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_e3
    move-exception v5

    monitor-exit v6
    :try_end_e5
    .catchall {:try_start_90 .. :try_end_e5} :catchall_e3

    throw v5

    .line 2063
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_e6
    move-exception v5

    :try_start_e7
    monitor-exit v6
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v5

    .line 2074
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "size":I
    :cond_e9
    :try_start_e9
    monitor-exit v6
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e3

    .line 2076
    const-string v5, "Firewall enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2077
    return-void
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "enable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 993
    return-void

    .line 990
    :catch_21
    move-exception v0

    .line 991
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableMultiRouter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2335
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "MultiRouter"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "enable"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 2341
    return-void

    .line 2338
    :catch_1f
    move-exception v0

    .line 2339
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :try_start_9
    const-string v1, "enable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_e} :catch_f

    .line 1372
    return-void

    .line 1369
    :catch_f
    move-exception v0

    .line 1370
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2473
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    :try_start_9
    const-string v1, "enable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNatIpv6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_e} :catch_f

    .line 2483
    return-void

    .line 2478
    :catch_f
    move-exception v0

    .line 2479
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNatIpv6 got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for enabling Ipv6 NAT interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .param p4, "ipAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2621
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    if-eqz p1, :cond_24

    .line 2624
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "set_udp_forwarding"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2631
    :goto_23
    return-void

    .line 2626
    :cond_24
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clear_udp_forwarding"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_39} :catch_3a

    goto :goto_23

    .line 2628
    :catch_3a
    move-exception v0

    .line 2629
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public flushNetworkDnsCache(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 1880
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "flushnet"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 1886
    return-void

    .line 1883
    :catch_20
    move-exception v0

    .line 1884
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dns"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_25

    move-result-object v1

    return-object v1

    .line 1322
    :catch_25
    move-exception v0

    .line 1323
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 877
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v11, "NetworkManagementService"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :try_start_9
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "interface"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "getcfg"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_7a

    move-result-object v3

    .line 886
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0xd5

    invoke-virtual {v3, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 889
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 893
    .local v8, "st":Ljava/util/StringTokenizer;
    :try_start_2a
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 894
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/util/NoSuchElementException; {:try_start_2a .. :try_end_38} :catch_60

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 898
    .local v7, "prefixLength":I
    :try_start_3a
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_41} :catch_80
    .catch Ljava/util/NoSuchElementException; {:try_start_3a .. :try_end_41} :catch_60

    move-result-object v0

    .line 904
    :goto_42
    :try_start_42
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_49} :catch_89
    .catch Ljava/util/NoSuchElementException; {:try_start_42 .. :try_end_49} :catch_60

    move-result v7

    .line 909
    :goto_4a
    :try_start_4a
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 910
    :goto_52
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_92

    .line 911
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/util/NoSuchElementException; {:try_start_4a .. :try_end_5f} :catch_60

    goto :goto_52

    .line 913
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .end local v7    # "prefixLength":I
    :catch_60
    move-exception v6

    .line 914
    .local v6, "nsee":Ljava/util/NoSuchElementException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid response from daemon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 882
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_7a
    move-exception v2

    .line 883
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 899
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "prefixLength":I
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    :catch_80
    move-exception v4

    .line 900
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_81
    const-string v9, "NetworkManagementService"

    const-string v10, "Failed to parse ipaddr"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 905
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_89
    move-exception v5

    .line 906
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "NetworkManagementService"

    const-string v10, "Failed to parse prefixLength"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catch Ljava/util/NoSuchElementException; {:try_start_81 .. :try_end_91} :catch_60

    goto :goto_4a

    .line 916
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_92
    return-object v1
.end method

.method public getInterfaceRxThrottle(Ljava/lang/String;)I
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->getInterfaceThrottle(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getInterfaceTxThrottle(Ljava/lang/String;)I
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->getInterfaceThrottle(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getIpForwardingEnabled()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipfwd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_29

    move-result-object v1

    .line 1191
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1192
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1186
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_29
    move-exception v0

    .line 1187
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getIpv6ForwardingEnabled()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2408
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipv6fwd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_29

    move-result-object v1

    .line 2418
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2419
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 2413
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_29
    move-exception v0

    .line 2414
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    .line 1604
    :catch_14
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 1581
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 1584
    :catch_10
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 1591
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 1594
    :catch_10
    move-exception v0

    .line 1595
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 19

    .prologue
    .line 1772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v15, "NetworkManagementService"

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    new-instance v11, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/4 v13, 0x1

    invoke-direct {v11, v14, v15, v13}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1776
    .local v11, "stats":Landroid/net/NetworkStats;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v14, "bandwidth"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "gettetherstats"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 1778
    .local v6, "events":[Lcom/android/server/NativeDaemonEvent;
    move-object v2, v6

    .local v2, "arr$":[Lcom/android/server/NativeDaemonEvent;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2b
    if-ge v7, v10, :cond_c1

    aget-object v5, v2, v7

    .line 1779
    .local v5, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v13

    const/16 v14, 0x72

    if-eq v13, v14, :cond_3a

    .line 1778
    :goto_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 1782
    :cond_3a
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
    :try_end_43
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_15 .. :try_end_43} :catch_a1

    .line 1784
    .local v12, "tok":Ljava/util/StringTokenizer;
    :try_start_43
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 1785
    .local v8, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1787
    .local v9, "ifaceOut":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1788
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v9, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1789
    const/4 v13, -0x5

    iput v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1790
    const/4 v13, 0x0

    iput v13, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 1791
    const/4 v13, 0x0

    iput v13, v4, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1792
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1793
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1794
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1795
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1796
    invoke-virtual {v11, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_86
    .catch Ljava/util/NoSuchElementException; {:try_start_43 .. :try_end_86} :catch_87
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_86} :catch_a7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_43 .. :try_end_86} :catch_a1

    goto :goto_37

    .line 1797
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v8    # "ifaceIn":Ljava/lang/String;
    .end local v9    # "ifaceOut":Ljava/lang/String;
    :catch_87
    move-exception v3

    .line 1798
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_88
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "problem parsing tethering stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_a1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_88 .. :try_end_a1} :catch_a1

    .line 1803
    .end local v2    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    .end local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "tok":Ljava/util/StringTokenizer;
    :catch_a1
    move-exception v3

    .line 1804
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v13

    throw v13

    .line 1799
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .restart local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v6    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "tok":Ljava/util/StringTokenizer;
    :catch_a7
    move-exception v3

    .line 1800
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_a8
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "problem parsing tethering stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_c1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a8 .. :try_end_c1} :catch_a1

    .line 1806
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v12    # "tok":Ljava/util/StringTokenizer;
    :cond_c1
    return-object v11
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1762
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    .line 1765
    :catch_13
    move-exception v0

    .line 1766
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;
    .registers 24
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v21, "NetworkManagementService"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v17, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    const-string v19, "/proc/net/route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_cb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1092
    .local v18, "s":Ljava/lang/String;
    const-string v19, "\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1094
    .local v5, "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_20

    .line 1095
    const/16 v19, 0x0

    aget-object v11, v5, v19

    .line 1097
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1098
    const/16 v19, 0x1

    aget-object v2, v5, v19

    .line 1099
    .local v2, "dest":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v7, v5, v19

    .line 1100
    .local v7, "gate":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v6, v5, v19

    .line 1101
    .local v6, "flags":Ljava/lang/String;
    const/16 v19, 0x7

    aget-object v13, v5, v19

    .line 1104
    .local v13, "mask":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_5b
    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 1106
    .local v3, "destAddr":Ljava/net/InetAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v15

    .line 1109
    .local v15, "prefixLength":I
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1112
    .local v12, "linkAddress":Landroid/net/LinkAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    .line 1115
    .local v9, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1116
    .local v16, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_9f} :catch_a0

    goto :goto_20

    .line 1117
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v9    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_a0
    move-exception v4

    .line 1118
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1127
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v6    # "flags":Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v13    # "mask":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_cb
    const-string v19, "/proc/net/ipv6_route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d9
    :goto_d9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_161

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1128
    .restart local v18    # "s":Ljava/lang/String;
    const-string v19, "\\s+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1129
    .restart local v5    # "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d9

    .line 1130
    const/16 v19, 0x9

    aget-object v19, v5, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1131
    .restart local v11    # "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d9

    .line 1132
    const/16 v19, 0x0

    aget-object v2, v5, v19

    .line 1133
    .restart local v2    # "dest":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v14, v5, v19

    .line 1134
    .local v14, "prefix":Ljava/lang/String;
    const/16 v19, 0x4

    aget-object v7, v5, v19

    .line 1138
    .restart local v7    # "gate":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_114
    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 1142
    .restart local v15    # "prefixLength":I
    invoke-static {v2}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1143
    .restart local v3    # "destAddr":Ljava/net/InetAddress;
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1145
    .restart local v12    # "linkAddress":Landroid/net/LinkAddress;
    invoke-static {v7}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 1147
    .local v8, "gateAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1148
    .restart local v16    # "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_135} :catch_136

    goto :goto_d9

    .line 1149
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v8    # "gateAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_136
    move-exception v4

    .line 1150
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 1156
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_161
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/RouteInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/net/RouteInfo;

    return-object v19
.end method

.method public getSipInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    .line 2776
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v6, "NetworkManagementService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :try_start_35
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "NetInfo"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "getsip"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_4d} :catch_71

    move-result-object v1

    .line 2787
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v4, 0xfa

    invoke-virtual {v1, v4}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2790
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2791
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2792
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_61
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2793
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 2783
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :catch_71
    move-exception v0

    .line 2784
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 2795
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    :cond_77
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a2

    .line 2797
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSipInfo result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 2801
    :cond_a2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Got an empty sipinfo response"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSoftApPreferredChannel()[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2364
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v6, "NetworkManagementService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    const-string v4, "NetworkManagementService"

    const-string v5, "getSoftApPreferredChannel"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :try_start_10
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "softap"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "getchannellist"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_1f} :catch_4d

    move-result-object v2

    .line 2375
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v4, 0xd6

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2380
    .local v3, "st":Ljava/util/StringTokenizer;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    .line 2381
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    .line 2382
    :goto_3d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 2383
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 2370
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :catch_4d
    move-exception v1

    .line 2371
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to communicate to native daemon to get softap preferred channel list"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2385
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    .line 2386
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 2388
    :cond_69
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Got an empty response"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getUsbClient(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2639
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "get_usb_client"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 2645
    return-void

    .line 2642
    :catch_1c
    move-exception v0

    .line 2643
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public isBandwidthControlEnabled()Z
    .registers 4

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    return v0
.end method

.method public isClatdStarted(Ljava/lang/String;)Z
    .registers 9
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1984
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "clatd"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_2c

    move-result-object v1

    .line 1993
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xdf

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1994
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1989
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2c
    move-exception v0

    .line 1990
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public isFirewallEnabled()Z
    .registers 2

    .prologue
    .line 1901
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1902
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .registers 3

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2010
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 2011
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public isTetheringStarted()Z
    .registers 8

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "tether"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_29

    move-result-object v1

    .line 1245
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1246
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1240
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_29
    move-exception v0

    .line 1241
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_20

    move-result-object v1

    return-object v1

    .line 870
    :catch_20
    move-exception v0

    .line 871
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_25

    move-result-object v1

    return-object v1

    .line 1282
    :catch_25
    move-exception v0

    .line 1283
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "list_ttys"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x71

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_19} :catch_1b

    move-result-object v1

    return-object v1

    .line 1390
    :catch_1b
    move-exception v0

    .line 1391
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 2033
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 2035
    :cond_9
    return-void
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2000
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 335
    return-void
.end method

.method public removeHetCommInterface()V
    .registers 7

    .prologue
    .line 2882
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "dualOn"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "remove"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_19

    .line 2889
    return-void

    .line 2886
    :catch_19
    move-exception v0

    .line 2887
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1552
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1557
    :try_start_c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1558
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1e

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    if-lez v2, :cond_20

    .line 1559
    :cond_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_55

    .line 1577
    :goto_1f
    return-void

    .line 1563
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "remove"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    iget v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_44} :catch_58
    .catchall {:try_start_20 .. :try_end_44} :catchall_55

    .line 1568
    :try_start_44
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/NetworkManagementService$3;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1576
    monitor-exit v3

    goto :goto_1f

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_55
    move-exception v2

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_55

    throw v2

    .line 1565
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_58
    move-exception v0

    .line 1566
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_59
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_55
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 1708
    :goto_d
    return-void

    .line 1694
    :cond_e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1695
    :try_start_11
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1697
    monitor-exit v2

    goto :goto_d

    .line 1707
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1

    .line 1702
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1703
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_35} :catch_37
    .catchall {:try_start_1e .. :try_end_35} :catchall_1b

    .line 1707
    :try_start_35
    monitor-exit v2

    goto :goto_d

    .line 1704
    :catch_37
    move-exception v0

    .line 1705
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_1b
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2277
    const-string v0, "remove"

    const-string v1, "local"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 2124
    const-string v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1634
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 1656
    :goto_d
    return-void

    .line 1640
    :cond_e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1641
    :try_start_11
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1643
    monitor-exit v2

    goto :goto_d

    .line 1655
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1

    .line 1646
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    .line 1651
    :try_start_28
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_3a} :catch_3c
    .catchall {:try_start_28 .. :try_end_3a} :catchall_1b

    .line 1655
    :try_start_3a
    monitor-exit v2

    goto :goto_d

    .line 1652
    :catch_3c
    move-exception v0

    .line 1653
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_1b
.end method

.method public removeNetwork(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2108
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "destroy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 2115
    return-void

    .line 2112
    :catch_20
    move-exception v0

    .line 2113
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1023
    const-string v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1024
    return-void
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 1858
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 1860
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string v6, "users"

    aput-object v6, v2, v5

    .line 1861
    const/4 v5, 0x1

    const-string v6, "remove"

    aput-object v6, v2, v5

    .line 1862
    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1863
    const/4 v0, 0x3

    .line 1865
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, p2

    if-ge v4, v5, :cond_4a

    .line 1866
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 1867
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_35

    array-length v5, v2

    if-ne v1, v5, :cond_4b

    .line 1869
    :cond_35
    :try_start_35
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_40} :catch_44

    .line 1873
    const/4 v0, 0x3

    .line 1865
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1870
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_44
    move-exception v3

    .line 1871
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 1876
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4a
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4b
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_41
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 12
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1487
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    if-nez p1, :cond_1f

    .line 1490
    :try_start_c
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1512
    :goto_1e
    return-void

    .line 1493
    :cond_1f
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot_max_client_num"

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1495
    .local v0, "clientNum":I
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->isBspPackage()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1496
    const/16 v0, 0x8

    .line 1501
    :cond_34
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v3, v6, :cond_87

    const-string v2, "hidden"

    .line 1503
    .local v2, "hiddenSSid":Ljava/lang/String;
    :goto_3a
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v6, 0x4

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_80
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_80} :catch_81

    goto :goto_1e

    .line 1509
    .end local v0    # "clientNum":I
    .end local v2    # "hiddenSSid":Ljava/lang/String;
    :catch_81
    move-exception v1

    .line 1510
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1501
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "clientNum":I
    :cond_87
    :try_start_87
    const-string v2, "broadcast"
    :try_end_89
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_87 .. :try_end_89} :catch_81

    goto :goto_3a
.end method

.method public setDefaultNetId(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2159
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_25

    .line 2166
    return-void

    .line 2163
    :catch_25
    move-exception v0

    .line 2164
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDhcpv6Enabled(ZLjava/lang/String;)V
    .registers 12
    .param p1, "enable"    # Z
    .param p2, "ifc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2606
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "IPv6Tether"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "%s"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_2a

    const-string v1, "add"

    :goto_1b
    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2613
    return-void

    .line 2609
    :cond_2a
    const-string v1, "remove"
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_2c} :catch_2d

    goto :goto_1b

    .line 2610
    :catch_2d
    move-exception v0

    .line 2611
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 1296
    return-void

    .line 1293
    :catch_24
    move-exception v0

    .line 1294
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1300
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v10, "NetworkManagementService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    if-eqz p1, :cond_3d

    iget v5, p1, Landroid/net/Network;->netId:I

    .line 1303
    .local v5, "netId":I
    :goto_e
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v8, "tether"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "dns"

    aput-object v10, v9, v7

    const/4 v7, 0x1

    const-string v10, "set"

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-direct {v1, v8, v9}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2b
    if-ge v3, v4, :cond_3f

    aget-object v6, v0, v3

    .line 1306
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1305
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "netId":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_3d
    move v5, v7

    .line 1302
    goto :goto_e

    .line 1310
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "netId":I
    :cond_3f
    :try_start_3f
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_44} :catch_45

    .line 1314
    return-void

    .line 1311
    :catch_45
    move-exception v2

    .line 1312
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    .line 1811
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    array-length v7, p2

    if-lez v7, :cond_44

    .line 1815
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "resolver"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "setnetdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    if-nez p3, :cond_24

    const-string p3, ""

    .end local p3    # "domains":Ljava/lang/String;
    :cond_24
    aput-object p3, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1817
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2c
    if-ge v4, v5, :cond_5a

    aget-object v6, v1, v4

    .line 1818
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1819
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_41

    .line 1820
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1817
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1824
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local p3    # "domains":Ljava/lang/String;
    :cond_44
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "resolver"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "clearnetdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1828
    .end local p3    # "domains":Ljava/lang/String;
    .restart local v2    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_5a
    :try_start_5a
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5a .. :try_end_5f} :catch_60

    .line 1832
    return-void

    .line 1829
    :catch_60
    move-exception v3

    .line 1830
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "allow"    # Z

    .prologue
    .line 1931
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1932
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1933
    if-eqz p3, :cond_29

    const-string v1, "allow"

    .line 1935
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_egress_dest_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_28} :catch_2c

    .line 1939
    return-void

    .line 1933
    .end local v1    # "rule":Ljava/lang/String;
    :cond_29
    const-string v1, "deny"

    goto :goto_c

    .line 1936
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 1937
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEgressProtoRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2588
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2589
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2590
    if-eqz p2, :cond_22

    const-string v1, "allow"

    .line 2592
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_egress_proto_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_21} :catch_25

    .line 2596
    return-void

    .line 2590
    .end local v1    # "rule":Ljava/lang/String;
    :cond_22
    const-string v1, "deny"

    goto :goto_c

    .line 2593
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 2594
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 1919
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1920
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1921
    if-eqz p2, :cond_22

    const-string v1, "allow"

    .line 1923
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_egress_source_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_21} :catch_25

    .line 1927
    return-void

    .line 1921
    .end local v1    # "rule":Ljava/lang/String;
    :cond_22
    const-string v1, "deny"

    goto :goto_c

    .line 1924
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 1925
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEnabled(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 1890
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1892
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_17

    const-string v1, "enable"

    :goto_f
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1893
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    .line 1897
    return-void

    .line 1892
    :cond_17
    const-string v1, "disable"
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 1894
    :catch_1a
    move-exception v0

    .line 1895
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 1907
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1908
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1909
    if-eqz p2, :cond_22

    const-string v1, "allow"

    .line 1911
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_interface_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_21} :catch_25

    .line 1915
    return-void

    .line 1909
    .end local v1    # "rule":Ljava/lang/String;
    :cond_22
    const-string v1, "deny"

    goto :goto_c

    .line 1912
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 1913
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidChainRule(IIZ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "networkType"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2730
    const-string v0, "mobile"

    .line 2731
    .local v0, "MOBILE":Ljava/lang/String;
    const-string v1, "wifi"

    .line 2733
    .local v1, "WIFI":Ljava/lang/String;
    if-eqz p3, :cond_2a

    const-string v4, "allow"

    .line 2734
    .local v4, "rule":Ljava/lang/String;
    :goto_9
    if-ne p2, v5, :cond_2d

    const-string v2, "wifi"

    .line 2737
    .local v2, "chain":Ljava/lang/String;
    :goto_d
    :try_start_d
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "firewall"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "set_uid_fw_rule"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_29} :catch_30

    .line 2741
    return-void

    .line 2733
    .end local v2    # "chain":Ljava/lang/String;
    .end local v4    # "rule":Ljava/lang/String;
    :cond_2a
    const-string v4, "deny"

    goto :goto_9

    .line 2734
    .restart local v4    # "rule":Ljava/lang/String;
    :cond_2d
    const-string v2, "mobile"

    goto :goto_d

    .line 2738
    .restart local v2    # "chain":Ljava/lang/String;
    :catch_30
    move-exception v3

    .line 2739
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
.end method

.method public setFirewallUidRule(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 1943
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1944
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1945
    if-eqz p2, :cond_26

    const-string v1, "allow"

    .line 1947
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_uid_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_25} :catch_29

    .line 1951
    return-void

    .line 1945
    .end local v1    # "rule":Ljava/lang/String;
    :cond_26
    const-string v1, "deny"

    goto :goto_c

    .line 1948
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 1949
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setGlobalAlert(J)V
    .registers 10
    .param p1, "alertBytes"    # J

    .prologue
    .line 1712
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 1723
    :goto_d
    return-void

    .line 1719
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setglobalalert"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_24} :catch_25

    goto :goto_d

    .line 1720
    :catch_25
    move-exception v0

    .line 1721
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setHetCommInterface(Ljava/lang/String;Ljava/lang/String;DD)V
    .registers 18
    .param p1, "iface1"    # Ljava/lang/String;
    .param p2, "iface2"    # Ljava/lang/String;
    .param p3, "ratio1"    # D
    .param p5, "ratio2"    # D

    .prologue
    .line 2854
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "dualOn"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2857
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    add-double v6, p3, p5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_27

    const-wide/16 v6, 0x0

    cmpg-double v6, p3, v6

    if-ltz v6, :cond_27

    const-wide/16 v6, 0x0

    cmpg-double v6, p5, v6

    if-gez v6, :cond_44

    .line 2858
    :cond_27
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid ratio: %f + %f > 1"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2860
    :cond_44
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, p3

    double-to-int v6, v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v2, v6, v8

    .line 2861
    .local v2, "converted_ratio1":D
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, p3

    double-to-int v6, v6

    rsub-int/lit8 v6, v6, 0x64

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v4, v6, v8

    .line 2862
    .local v4, "converted_ratio2":D
    const-string v6, "add"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2863
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2864
    invoke-virtual {v0, p2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2865
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2866
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2868
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setHetCommInterface:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :try_start_89
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_8e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_89 .. :try_end_8e} :catch_8f

    .line 2875
    return-void

    .line 2872
    :catch_8f
    move-exception v1

    .line 2873
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public setHetCommRatio(DD)V
    .registers 16
    .param p1, "ratio1"    # D
    .param p3, "ratio2"    # D

    .prologue
    .line 2896
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "dualOn"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2899
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    add-double v6, p1, p3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_27

    const-wide/16 v6, 0x0

    cmpg-double v6, p1, v6

    if-ltz v6, :cond_27

    const-wide/16 v6, 0x0

    cmpg-double v6, p3, v6

    if-gez v6, :cond_44

    .line 2900
    :cond_27
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid ratio: %f + %f > 1"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2902
    :cond_44
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, p1

    double-to-int v6, v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v2, v6, v8

    .line 2903
    .local v2, "converted_ratio1":D
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, p1

    double-to-int v6, v6

    rsub-int/lit8 v6, v6, 0x64

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v4, v6, v8

    .line 2904
    .local v4, "converted_ratio2":D
    const-string v6, "setratio"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2905
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2906
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2908
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setHetCommRatio:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :try_start_83
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_88
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_83 .. :try_end_88} :catch_89

    .line 2915
    return-void

    .line 2912
    :catch_89
    move-exception v1

    .line 2913
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    .prologue
    .line 1660
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 1684
    :goto_d
    return-void

    .line 1667
    :cond_e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1668
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setting alert requires existing quota on iface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1671
    :cond_1e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1672
    :try_start_21
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1673
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has alert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1683
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_48

    throw v1

    .line 1678
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1679
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4b .. :try_end_6d} :catch_6f
    .catchall {:try_start_4b .. :try_end_6d} :catchall_48

    .line 1683
    :try_start_6d
    monitor-exit v2

    goto :goto_d

    .line 1680
    :catch_6f
    move-exception v0

    .line 1681
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_48
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    .prologue
    .line 921
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v5, "NetworkManagementService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enter setInterfaceConfig, iface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    .line 926
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_35

    .line 927
    :cond_2d
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Null LinkAddress given"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 930
    :cond_35
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "interface"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "setcfg"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 934
    .local v2, "flag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_65

    .line 938
    .end local v2    # "flag":Ljava/lang/String;
    :cond_75
    :try_start_75
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_75 .. :try_end_7a} :catch_7b

    .line 944
    :goto_7a
    return-void

    .line 939
    :catch_7b
    move-exception v1

    .line 941
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v5, "NetworkManagementService"

    const-string v6, "setInterfaceConfig Error"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 950
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 951
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 952
    return-void
.end method

.method public setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "ipv6ndoffload"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_23

    const-string v1, "enable"

    :goto_1d
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1014
    return-void

    .line 1009
    :cond_23
    const-string v1, "disable"
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_1d

    .line 1011
    :catch_26
    move-exception v0

    .line 1012
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 964
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "ipv6privacyextensions"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_23

    const-string v1, "enable"

    :goto_1d
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 971
    return-void

    .line 966
    :cond_23
    const-string v1, "disable"
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_1d

    .line 968
    :catch_26
    move-exception v0

    .line 969
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 1630
    :goto_d
    return-void

    .line 1617
    :cond_e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1618
    :try_start_11
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1619
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has quota"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1629
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_38

    throw v1

    .line 1624
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1625
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_5d} :catch_5f
    .catchall {:try_start_3b .. :try_end_5d} :catchall_38

    .line 1629
    :try_start_5d
    monitor-exit v2

    goto :goto_d

    .line 1626
    :catch_5f
    move-exception v0

    .line 1627
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_38
.end method

.method public setInterfaceThrottle(Ljava/lang/String;II)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxKbps"    # I
    .param p3, "txKbps"    # I

    .prologue
    .line 2667
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setthrottle"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_29} :catch_46

    .line 2674
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2675
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "interface_throttle_rx_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2676
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "interface_throttle_tx_value"

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2679
    :cond_45
    return-void

    .line 2670
    :catch_46
    move-exception v0

    .line 2671
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 958
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 959
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 960
    return-void
.end method

.method public setIotFirewall()V
    .registers 7

    .prologue
    .line 2842
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "set_nsiot_firewall"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_19

    .line 2848
    return-void

    .line 2845
    :catch_19
    move-exception v0

    .line 2846
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipfwd"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_1b

    const-string v1, "enable"

    :goto_15
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1203
    return-void

    .line 1199
    :cond_1b
    const-string v1, "disable"
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_15

    .line 1200
    :catch_1e
    move-exception v0

    .line 1201
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setIpsForward(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "ips"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2283
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2285
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "ipsfwd"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_1d

    const-string v1, "enable"

    :goto_17
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2289
    return-void

    .line 2285
    :cond_1d
    const-string v1, "disable"
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_17

    .line 2286
    :catch_20
    move-exception v0

    .line 2287
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setIpv6ForwardingEnabled(Z)V
    .registers 11
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2428
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipv6fwd"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "%sable"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_27

    const-string v1, "en"

    :goto_1b
    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2435
    return-void

    .line 2431
    :cond_27
    const-string v1, "dis"
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_1b

    .line 2432
    :catch_2a
    move-exception v0

    .line 2433
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .prologue
    .line 1161
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setmtu"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_22} :catch_24

    move-result-object v1

    .line 1169
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 1166
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_24
    move-exception v0

    .line 1167
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setNetworkPermission(ILjava/lang/String;)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 2181
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    if-eqz p2, :cond_2f

    .line 2185
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "permission"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "network"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2192
    :goto_2e
    return-void

    .line 2187
    :cond_2f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "permission"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "network"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "clear"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_4f} :catch_50

    goto :goto_2e

    .line 2189
    :catch_50
    move-exception v0

    .line 2190
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setOthersRule(Z)V
    .registers 9
    .param p1, "allow"    # Z

    .prologue
    .line 2304
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2305
    if-eqz p1, :cond_1a

    const-string v1, "allow"

    .line 2307
    .local v1, "rule":Ljava/lang/String;
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_others_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_19} :catch_1d

    .line 2311
    return-void

    .line 2305
    .end local v1    # "rule":Ljava/lang/String;
    :cond_1a
    const-string v1, "deny"

    goto :goto_7

    .line 2308
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 2309
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setPackageUidRule(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 2319
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2320
    if-eqz p2, :cond_21

    const-string v1, "allow"

    .line 2322
    .local v1, "rule":Ljava/lang/String;
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_pkg_uid_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_20} :catch_24

    .line 2326
    return-void

    .line 2320
    .end local v1    # "rule":Ljava/lang/String;
    :cond_21
    const-string v1, "deny"

    goto :goto_7

    .line 2323
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 2324
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setPermission(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uids"    # [I

    .prologue
    .line 2197
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const/16 v5, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    .line 2200
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string v6, "permission"

    aput-object v6, v2, v5

    .line 2201
    const/4 v5, 0x1

    const-string v6, "user"

    aput-object v6, v2, v5

    .line 2202
    const/4 v5, 0x2

    const-string v6, "set"

    aput-object v6, v2, v5

    .line 2203
    const/4 v5, 0x3

    aput-object p1, v2, v5

    .line 2204
    const/4 v0, 0x4

    .line 2206
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    array-length v5, p2

    if-ge v4, v5, :cond_4b

    .line 2207
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2208
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_36

    array-length v5, v2

    if-ne v1, v5, :cond_4c

    .line 2210
    :cond_36
    :try_start_36
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_41} :catch_45

    .line 2214
    const/4 v0, 0x4

    .line 2206
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 2211
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_45
    move-exception v3

    .line 2212
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2217
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4b
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4c
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_42
.end method

.method public setRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2492
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "IPv6Tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setroute"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 2502
    return-void

    .line 2497
    :catch_1f
    move-exception v0

    .line 2498
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRouteIpv6 got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for setRouteIpv6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSourceRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2530
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "IPv6Tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setsroute"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 2540
    return-void

    .line 2535
    :catch_1f
    move-exception v0

    .line 2536
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSourceRouteIpv6 got Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to communicate to native daemon for setSourceRouteIpv6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUidNetworkRules(IZ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 1727
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v2, :cond_e

    .line 1752
    :goto_d
    return-void

    .line 1733
    :cond_e
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1734
    :try_start_11
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 1735
    .local v1, "oldRejectOnQuota":Z
    if-ne v1, p2, :cond_1f

    .line 1737
    monitor-exit v3

    goto :goto_d

    .line 1751
    .end local v1    # "oldRejectOnQuota":Z
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v2

    .line 1741
    .restart local v1    # "oldRejectOnQuota":Z
    :cond_1f
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "bandwidth"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p2, :cond_41

    const-string v2, "addnaughtyapps"

    :goto_2b
    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1743
    if-eqz p2, :cond_44

    .line 1744
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1f .. :try_end_3f} :catch_4a
    .catchall {:try_start_1f .. :try_end_3f} :catchall_1c

    .line 1751
    :goto_3f
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_1c

    goto :goto_d

    .line 1741
    :cond_41
    :try_start_41
    const-string v2, "removenaughtyapps"

    goto :goto_2b

    .line 1746
    :cond_44
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_49
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_49} :catch_4a
    .catchall {:try_start_41 .. :try_end_49} :catchall_1c

    goto :goto_3f

    .line 1748
    :catch_4a
    move-exception v0

    .line 1749
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_4b
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_1c
.end method

.method public setUidRule(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 2293
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2294
    if-eqz p2, :cond_21

    const-string v1, "allow"

    .line 2296
    .local v1, "rule":Ljava/lang/String;
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_myuid_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_20} :catch_24

    .line 2300
    return-void

    .line 2294
    .end local v1    # "rule":Ljava/lang/String;
    :cond_21
    const-string v1, "deny"

    goto :goto_7

    .line 2297
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 2298
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setVolteIotFirewall(Ljava/lang/String;)V
    .registers 8
    .param p1, "ifc"    # Ljava/lang/String;

    .prologue
    .line 2935
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "set_volte_nsiot_firewall"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 2941
    return-void

    .line 2938
    :catch_1c
    move-exception v0

    .line 2939
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v0, "NetworkManagementService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 12
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1423
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :try_start_a
    const-string v3, "AP"

    invoke-virtual {p0, p2, v3}, Lcom/android/server/NetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    if-nez p1, :cond_33

    .line 1427
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1446
    :goto_23
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "startap"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1450
    return-void

    .line 1430
    :cond_33
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot_max_client_num"

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1432
    .local v0, "clientNum":I
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->isBspPackage()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1433
    const/16 v0, 0x8

    .line 1438
    :cond_48
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v3, v6, :cond_9b

    const-string v2, "hidden"

    .line 1440
    .local v2, "hiddenSSid":Ljava/lang/String;
    :goto_4e
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v6, 0x4

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->channelWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_94
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_94} :catch_95

    goto :goto_23

    .line 1447
    .end local v0    # "clientNum":I
    .end local v2    # "hiddenSSid":Ljava/lang/String;
    :catch_95
    move-exception v1

    .line 1448
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1438
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "clientNum":I
    :cond_9b
    :try_start_9b
    const-string v2, "broadcast"
    :try_end_9d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9b .. :try_end_9d} :catch_95

    goto :goto_4e
.end method

.method public startClatd(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1962
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "start"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 1969
    return-void

    .line 1966
    :catch_1c
    move-exception v0

    .line 1967
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 12
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    .prologue
    .line 1207
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "tether"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "start"

    aput-object v9, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1b
    if-ge v4, v5, :cond_25

    aget-object v2, v0, v4

    .line 1213
    .local v2, "d":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1212
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1217
    .end local v2    # "d":Ljava/lang/String;
    :cond_25
    :try_start_25
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 1221
    return-void

    .line 1218
    :catch_2b
    move-exception v3

    .line 1219
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .registers 8
    .param p1, "wlanIface"    # Ljava/lang/String;

    .prologue
    .line 1476
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "softap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stopap"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1479
    const-string v1, "STA"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 1483
    return-void

    .line 1480
    :catch_1e
    move-exception v0

    .line 1481
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopClatd(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1973
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stop"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 1980
    return-void

    .line 1977
    :catch_1c
    move-exception v0

    .line 1978
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopTethering()V
    .registers 7

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_19

    .line 1231
    return-void

    .line 1228
    :catch_19
    move-exception v0

    .line 1229
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 318
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "tether"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "interface"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_3a

    .line 1257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v2, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1262
    return-void

    .line 1254
    .end local v1    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_3a
    move-exception v0

    .line 1255
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2005
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 341
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1266
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_24

    .line 1272
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1273
    return-void

    .line 1269
    :catch_24
    move-exception v0

    .line 1270
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    :try_start_9
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "softap"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwreload"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 1472
    return-void

    .line 1469
    :catch_1f
    move-exception v0

    .line 1470
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method
