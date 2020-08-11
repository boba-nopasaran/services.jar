.class public Lcom/mediatek/rns/RnsServiceImpl;
.super Lcom/mediatek/rns/IRnsManager$Stub;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;,
        Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;,
        Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;,
        Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST:Landroid/net/NetworkRequest;

.field private static final DISABLE_WIFI_GUARD_TIMER:I = 0x2710

.field private static final DISCONNECT_RSSI:I = -0x7f

.field private static final EVENT_APPLY_IMS_OVER_LTE_SETTINGS:I = 0x186a0

.field private static final EVENT_APPLY_WIFI_CALL_SETTINGS:I = 0xa

.field private static final EVENT_RAT_CONNECTIVITY_CHANGE:I = 0x3e8

.field private static final EVENT_REGISTER_RNS_AGENT:I = 0x1

.field private static final EVENT_WIFI_DISABLE_ACTION:I = 0x65

.field private static final EVENT_WIFI_DISABLE_EXPIRED:I = 0x66

.field private static final EVENT_WIFI_DISCONNECT:I = 0x64

.field private static final EVENT_WIFI_RSSI_UPDATE:I = 0x0

.field private static final EVENT_WIFI_STATE_CHANGED_ACTION:I = 0x2710

.field private static final MAX_REG_WAIT:I = 0x1388

.field private static final REQUEST:Landroid/net/NetworkRequest;

.field private static final WEAK_SIGNAL:I = -0x74


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private isEpdgImsConnected:Z

.field private isLteImsConnected:Z

.field private mAllowedRadio:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

.field private mHandoverEvent:I

.field private mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCallActive:Z

.field private mIsDefaultRequestEnabled:Z

.field private mIsEpdgConnectionChanged:Z

.field private mIsFirstRequest:Z

.field private mIsImsOverLteEnabled:Z

.field private mIsSettingChanged:Z

.field private mIsWfcEnabled:Z

.field private mIsWifiConnected:Z

.field private mIsWifiDisabling:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLastSignalRsrp:I

.field private mLtePhoneState:Landroid/telephony/ServiceState;

.field private mLteRegTime:J

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPhoneCallStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPhoneSignalListener:Landroid/telephony/PhoneStateListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/rns/RnsPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCallState:I

.field private mServiceState:I

.field private mStartTime:J

.field private mState:I

.field private mTeleMgr:Landroid/telephony/TelephonyManager;

.field private mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

.field private mWifiDisableFlag:I

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mWifiTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xd

    .line 87
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    .line 94
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Lcom/mediatek/rns/IRnsManager$Stub;-><init>()V

    .line 55
    const-string v3, "RnsServiceImpl"

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->DEBUG:Z

    .line 67
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    .line 68
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    .line 69
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 70
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 73
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    .line 74
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 76
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 82
    const/16 v3, -0x6a

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 83
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 93
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 100
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    .line 101
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    .line 102
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 103
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    .line 106
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 107
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 108
    iput v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    .line 109
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    .line 164
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$1;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$2;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 328
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$3;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$3;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 350
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$4;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$4;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneSignalListener:Landroid/telephony/PhoneStateListener;

    .line 1119
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$5;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$5;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1156
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$6;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsServiceImpl$6;-><init>(Lcom/mediatek/rns/RnsServiceImpl;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 115
    const-string v3, "missing Context"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    .line 116
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 118
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 119
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current RSSI on constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "RnsServiceThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 122
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 123
    .local v2, "rnsLooper":Landroid/os/Looper;
    if-eqz v2, :cond_ba

    .line 124
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;-><init>(Lcom/mediatek/rns/RnsServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    .line 127
    :cond_ba
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v3, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    .line 137
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 138
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneSignalListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 139
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPhoneCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 141
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    .line 143
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->observe(Landroid/content/Context;)V

    .line 144
    new-instance v3, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v5, 0x186a0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    .line 146
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mImsOverLteSettingsObserver:Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->observe(Landroid/content/Context;)V

    .line 148
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->createDefaultPolicies()V

    .line 150
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/rns/RnsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/rns/RnsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/rns/RnsServiceImpl;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/rns/RnsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPrevCallState:I

    return p1
.end method

.method static synthetic access$1802(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/rns/RnsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/rns/RnsServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiRssiUpdate(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventApplyWifiCallSettings()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventRatConnectivityChange()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisabledExpired()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisableAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/mediatek/rns/RnsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsServiceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    return-void
.end method

.method private addRadio(I)V
    .registers 4
    .param p1, "connectionType"    # I

    .prologue
    .line 755
    const/4 v0, 0x3

    if-ge p1, v0, :cond_b

    .line 756
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 760
    return-void

    .line 758
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDefaultPolicies()V
    .registers 6

    .prologue
    .line 304
    new-instance v1, Lcom/mediatek/rns/RnsPolicy$UserPreference;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;-><init>(I)V

    .line 306
    .local v1, "preference":Lcom/mediatek/rns/RnsPolicy$UserPreference;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    invoke-direct {v0, v1}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$UserPreference;)V

    .line 307
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v2, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    const/16 v3, -0x4b

    const/16 v4, -0x55

    invoke-direct {v2, v3, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;-><init>(II)V

    .line 311
    .local v2, "threshold":Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-direct {v0, v2}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;)V

    .line 312
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method private decideHandover()V
    .registers 10

    .prologue
    const/16 v8, -0x74

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 857
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 858
    const-string v3, "RnsServiceImpl"

    const-string v4, "decideHandover - handover in progress"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_11
    :goto_11
    return-void

    .line 861
    :cond_12
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsPolicy;

    .line 862
    .local v1, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 863
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v2

    .line 864
    .local v2, "profile":I
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v3, :cond_31

    .line 865
    const/4 v2, 0x0

    .line 867
    :cond_31
    packed-switch v2, :pswitch_data_2ba

    goto :goto_11

    .line 909
    :pswitch_35
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_104

    .line 910
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto :goto_11

    .line 869
    :pswitch_45
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_53

    .line 870
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto :goto_11

    .line 872
    :cond_53
    const-string v3, "RnsServiceImpl"

    const-string v4, "Need to inform to disconnect as for Wifi Only can\'t connect to other radio"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 875
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto :goto_11

    .line 879
    :pswitch_62
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-lt v4, v3, :cond_8a

    .line 881
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto :goto_11

    .line 882
    :cond_8a
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_cd

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v3, v8, :cond_cd

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    if-ge v4, v3, :cond_cd

    .line 886
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 887
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_11

    .line 889
    :cond_bd
    const-string v3, "RnsServiceImpl"

    const-string v4, "Volte disabled will not establish IMS PDN"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 891
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_11

    .line 893
    :cond_cd
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_e3

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_e3

    .line 896
    const-string v3, "RnsServiceImpl"

    const-string v4, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_11

    .line 899
    :cond_e3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 900
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_11

    .line 902
    :cond_f4
    const-string v3, "RnsServiceImpl"

    const-string v4, "Need to inform to disconnect as for Wifi Preferred can\'t connect to other radio"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 905
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_11

    .line 912
    :cond_104
    const-string v3, "RnsServiceImpl"

    const-string v4, "Need to inform to disconnect as for Cellular Only can\'t connect to other radio"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v3, "net.ims.skip"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 915
    .local v0, "isSkipImsPdn":Z
    if-eqz v0, :cond_11c

    .line 916
    const-string v3, "RnsServiceImpl"

    const-string v4, "Ignore IMS disconnected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 919
    :cond_11c
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 920
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_11

    .line 924
    .end local v0    # "isSkipImsPdn":Z
    :pswitch_125
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    if-nez v3, :cond_12e

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_171

    :cond_12e
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_171

    .line 925
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_14a

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 926
    const-string v3, "RnsServiceImpl"

    const-string v4, "Preference changed to Cell Preferred, do Roveout"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_11

    .line 928
    :cond_14a
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 929
    const-string v3, "RnsServiceImpl"

    const-string v4, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v3, "net.ims.skip"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 933
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_168

    .line 934
    const-string v3, "RnsServiceImpl"

    const-string v4, "Ignore IMS disconnected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 937
    :cond_168
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 938
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_11

    .line 943
    .end local v0    # "isSkipImsPdn":Z
    :cond_171
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_1d2

    .line 945
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    if-ge v4, v3, :cond_11

    .line 948
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_1ab

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 949
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred,wifi rssi drops,do Roveout"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_11

    .line 951
    :cond_1ab
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 952
    const-string v3, "RnsServiceImpl"

    const-string v4, "IMS connection can\'t be establish for Cellular Preferred as 3G/2G is available"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v3, "net.ims.skip"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 956
    .restart local v0    # "isSkipImsPdn":Z
    if-eqz v0, :cond_1c9

    .line 957
    const-string v3, "RnsServiceImpl"

    const-string v4, "Ignore IMS disconnected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 960
    :cond_1c9
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 961
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_11

    .line 968
    .end local v0    # "isSkipImsPdn":Z
    :cond_1d2
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_254

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_254

    .line 971
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-ge v3, v8, :cond_20e

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_20e

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-le v4, v3, :cond_20e

    .line 975
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred rsrp low do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    .line 979
    :cond_20e
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 980
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_244

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-le v4, v3, :cond_244

    .line 983
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred IMS over LTE off do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_11

    .line 986
    :cond_244
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred IMS over LTE off no wifi do fallback"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 988
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto/16 :goto_11

    .line 994
    :cond_254
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_26c

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_26c

    .line 995
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred create IMS over LTE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveOut()V

    goto/16 :goto_11

    .line 998
    :cond_26c
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_2a2

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_2a2

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v5, "WifiRoveThreshold"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    if-le v4, v3, :cond_2a2

    .line 1002
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred no signal except wifi good rssi do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_11

    .line 1005
    :cond_2a2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1006
    const-string v3, "RnsServiceImpl"

    const-string v4, "Cell Preferred no signal except wifi available do Rovein"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->startRoveIn()V

    goto/16 :goto_11

    .line 867
    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_35
        :pswitch_62
        :pswitch_125
        :pswitch_45
    .end packed-switch
.end method

.method private dump()V
    .registers 6

    .prologue
    .line 1527
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- dump ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1529
    .local v1, "key":Ljava/lang/String;
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policy["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1531
    .end local v1    # "key":Ljava/lang/String;
    :cond_46
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfcEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteNetworkReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const-string v2, "RnsServiceImpl"

    const-string v3, "--- end ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return-void
.end method

.method private enumerateBits(J)[I
    .registers 14
    .param p1, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 722
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 723
    .local v4, "size":I
    new-array v3, v4, [I

    .line 724
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 725
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "resource":I
    move v1, v0

    .line 726
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_b
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_21

    .line 727
    and-long v6, p1, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_22

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    .line 728
    :goto_1b
    const/4 v5, 0x1

    shr-long/2addr p1, v5

    .line 729
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_b

    .line 731
    :cond_21
    return-object v3

    :cond_22
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1b
.end method

.method private getNetworkType()I
    .registers 5

    .prologue
    .line 670
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 672
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 673
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_1a

    .line 693
    const/4 v2, -0x1

    :goto_12
    return v2

    .line 679
    :pswitch_13
    const/4 v2, 0x0

    goto :goto_12

    .line 689
    :pswitch_15
    const/4 v2, 0x1

    goto :goto_12

    .line 691
    :pswitch_17
    const/4 v2, 0x2

    goto :goto_12

    .line 673
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_13
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private getPolicyProfile()I
    .registers 6

    .prologue
    .line 1564
    const/4 v1, -0x1

    .line 1565
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1566
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1567
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1569
    :cond_1b
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    return v1
.end method

.method private handleDefaultPdnRequest()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1291
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleDefaultPdnRequest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_22

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_26

    :cond_22
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v2, :cond_66

    .line 1298
    :cond_26
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v1

    .line 1299
    .local v1, "profile":I
    if-eq v4, v1, :cond_2f

    const/4 v2, 0x2

    if-ne v2, v1, :cond_59

    .line 1302
    :cond_2f
    :try_start_2f
    monitor-enter p0
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_30} :catch_5d

    .line 1303
    :try_start_30
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-nez v2, :cond_58

    .line 1304
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/mediatek/rns/RnsServiceImpl;->DEFAULT_REQUEST:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1305
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1306
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register LTE requst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_58
    monitor-exit p0

    .line 1326
    .end local v1    # "profile":I
    :cond_59
    :goto_59
    return-void

    .line 1308
    .restart local v1    # "profile":I
    :catchall_5a
    move-exception v2

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v2
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 1309
    :catch_5d
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to register"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 1315
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "profile":I
    :cond_66
    :try_start_66
    monitor-enter p0
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_67} :catch_81

    .line 1316
    :try_start_67
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    if-eqz v2, :cond_7c

    .line 1317
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1318
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsDefaultRequestEnabled:Z

    .line 1319
    const-string v2, "RnsServiceImpl"

    const-string v3, "Unregister LTE requst"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_7c
    monitor-exit p0

    goto :goto_59

    :catchall_7e
    move-exception v2

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_67 .. :try_end_80} :catchall_7e

    :try_start_80
    throw v2
    :try_end_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_81} :catch_81

    .line 1322
    :catch_81
    move-exception v0

    .line 1323
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "RnsServiceImpl"

    const-string v3, "fail to unregister"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method private handleEventApplyWifiCallSettings()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1255
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "when_to_make_wifi_calls"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_ef

    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    .line 1258
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventApplyWifiCallSettings, mIsWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1260
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1261
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_selected_wfc_preference"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->setMode(I)V

    .line 1264
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_73
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1268
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    if-eqz v1, :cond_dd

    .line 1269
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_in_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveIn(I)V

    .line 1273
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rns_wifi_rove_out_rssi"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveOut(I)V

    .line 1276
    const-string v1, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RoveIn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RoveOut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_dd
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_e4

    .line 1280
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1282
    :cond_e4
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_f2

    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v1, :cond_f2

    .line 1288
    :goto_ee
    return-void

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_ef
    move v1, v3

    .line 1255
    goto/16 :goto_12

    .line 1285
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_f2
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    .line 1286
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1287
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsSettingChanged:Z

    goto :goto_ee
.end method

.method private handleEventRatConnectivityChange()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 1329
    const/4 v1, -0x1

    .line 1330
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1332
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1333
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1335
    :cond_1d
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-eq v2, v4, :cond_23

    .line 1336
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1338
    :cond_23
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_2e

    .line 1356
    :cond_2d
    :goto_2d
    return-void

    .line 1341
    :cond_2e
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event RAT Connectivity change "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v4, :cond_46

    .line 1343
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power off "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1346
    :cond_46
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_5b

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v7, :cond_5b

    .line 1347
    const-string v2, "RnsServiceImpl"

    const-string v3, "mLtePhoneState went to power on "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iput v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    .line 1350
    :cond_5b
    if-eq v1, v4, :cond_60

    .line 1351
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1353
    :cond_60
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    if-ne v2, v6, :cond_2d

    .line 1354
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mServiceState:I

    goto :goto_2d
.end method

.method private handleEventWifiRssiUpdate(I)V
    .registers 10
    .param p1, "newRssi"    # I

    .prologue
    const/4 v6, 0x0

    .line 1219
    const-string v1, "persist.net.test.rssi"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1220
    .local v0, "testRssi":I
    if-eqz v0, :cond_a

    .line 1221
    move p1, v0

    .line 1226
    :cond_a
    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 1227
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First Request after bootup, RAT Selected = LTE mIsFirstRequst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_64

    .line 1230
    iput-boolean v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 1231
    const-string v1, "RnsServiceImpl"

    const-string v2, "Max wait time Up, allow handover to wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_3f
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    .line 1240
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventWifiRssiUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-nez v1, :cond_90

    iget-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v1, :cond_90

    .line 1252
    :cond_63
    :goto_63
    return-void

    .line 1233
    :cond_64
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block the handover to Wifi:: Waiting time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " less than MAX REG WAIT time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1244
    :cond_90
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 1245
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1248
    :cond_99
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1249
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send Rove Out Alert warning for rssi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_63
.end method

.method private handleWifiDisableAction()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1433
    const-string v1, "RnsServiceImpl"

    const-string v2, "handle Wifi Disable Action:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getPolicyProfile()I

    move-result v0

    .line 1436
    .local v0, "profile":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    .line 1437
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v1

    if-eqz v1, :cond_35

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v2, -0x74

    if-le v1, v2, :cond_35

    .line 1438
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1439
    iput-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1440
    const-string v1, "RnsServiceImpl"

    const-string v2, "Epdg is disconnected & disable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1442
    invoke-direct {p0, v3}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1451
    :goto_34
    return-void

    .line 1448
    :cond_35
    const-string v1, "RnsServiceImpl"

    const-string v2, "Disable ePDG connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1450
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    goto :goto_34
.end method

.method private handleWifiDisabledExpired()V
    .registers 4

    .prologue
    .line 1454
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Wifi Disable Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    if-eqz v0, :cond_28

    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1457
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 1459
    :cond_28
    return-void
.end method

.method private isCellularNetworkAvailable()Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 702
    const/4 v3, 0x0

    .line 703
    .local v3, "network":Z
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 704
    .local v1, "infos":[Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 706
    .local v2, "mode":I
    if-ne v2, v5, :cond_18

    .line 718
    :cond_17
    :goto_17
    return v4

    .line 709
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    const/4 v6, 0x2

    if-ge v0, v6, :cond_30

    .line 710
    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2d

    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v5, :cond_2d

    .line 711
    const/4 v3, 0x1

    .line 709
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 714
    :cond_30
    const-string v6, "RnsServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCellularNetworkAvailable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    if-eqz v3, :cond_17

    move v4, v5

    .line 716
    goto :goto_17
.end method

.method private isHandoverInProgress()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_2
    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v1, v0, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 1071
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private isImsOverLteEnabled()Z
    .registers 4

    .prologue
    .line 1488
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check is Ims over Lte Enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    return v0
.end method

.method private isLteNetworkReady()Z
    .registers 5

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "isLteReady":Z
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1e

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 643
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3d

    const/4 v0, 0x1

    .line 645
    :cond_1e
    :goto_1e
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLteNetworkReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-nez v0, :cond_3c

    .line 647
    const/16 v1, -0x74

    iput v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    .line 649
    :cond_3c
    return v0

    .line 643
    :cond_3d
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private isMatchRoveIn()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 763
    const/4 v1, -0x1

    .line 764
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 766
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 767
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 772
    :cond_1c
    if-eqz v1, :cond_21

    const/4 v3, -0x1

    if-ne v1, v3, :cond_29

    .line 773
    :cond_21
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular only/none"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_28
    return v2

    .line 778
    :cond_29
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 779
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 781
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v4

    if-le v3, v4, :cond_5a

    .line 782
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_4e
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v3, :cond_62

    .line 795
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 784
    :cond_5a
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 799
    :cond_62
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_71

    const/4 v3, 0x2

    if-ne v1, v3, :cond_71

    .line 800
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false, cellular preferred"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 804
    :cond_71
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_8a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_8a

    .line 805
    const/4 v2, 0x1

    goto :goto_28

    .line 808
    :cond_8a
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveIn = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private isMatchRoveOut()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 813
    const/4 v1, -0x1

    .line 814
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 816
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 817
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 822
    :cond_1c
    const/4 v3, 0x3

    if-eq v1, v3, :cond_22

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2a

    .line 823
    :cond_22
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, profile issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_29
    return v2

    .line 828
    :cond_2a
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 829
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_52

    const/4 v3, 0x2

    if-eq v1, v3, :cond_52

    .line 831
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v4

    if-ge v3, v4, :cond_5e

    .line 832
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_52
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v3, :cond_66

    .line 841
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, check pdn connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 834
    :cond_5e
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 846
    :cond_66
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_7f

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7f

    .line 848
    const/4 v2, 0x1

    goto :goto_29

    .line 851
    :cond_7f
    const-string v3, "RnsServiceImpl"

    const-string v4, "isMatchRoveOut = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private isNetworkReady()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 653
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_23

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 656
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->getNetworkType()I

    move-result v0

    .line 657
    .local v0, "netType":I
    if-eqz v0, :cond_1b

    if-ne v0, v1, :cond_23

    .line 658
    :cond_1b
    const-string v2, "RnsServiceImpl"

    const-string v3, "isNetworkReady true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v0    # "netType":I
    :goto_22
    return v1

    .line 662
    :cond_23
    const-string v1, "RnsServiceImpl"

    const-string v2, "isNetworkReady false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private isWifiConnected()Z
    .registers 2

    .prologue
    .line 633
    monitor-enter p0

    .line 634
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 635
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private makeImsRadio()I
    .registers 11

    .prologue
    const/16 v9, -0x74

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 469
    iput v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 472
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 473
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 474
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_28

    .line 475
    const/4 v1, 0x0

    .line 477
    :cond_28
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v6, :cond_30

    if-eq v1, v6, :cond_30

    .line 478
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 480
    :cond_30
    packed-switch v1, :pswitch_data_1b6

    .line 569
    :cond_33
    :goto_33
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeImsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 482
    :pswitch_5e
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_6c

    .line 483
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_33

    .line 484
    :cond_6c
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 485
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_33

    .line 487
    :cond_76
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_33

    .line 492
    :pswitch_7a
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    if-ne v2, v6, :cond_94

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 493
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLteRegTime:J

    goto :goto_33

    .line 497
    :cond_94
    iput-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsFirstRequest:Z

    .line 498
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_d9

    .line 502
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v2, :cond_d4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 503
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 504
    const-string v2, "RnsServiceImpl"

    const-string v3, "Call is active, no attach to Wifi"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 506
    :cond_d4
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 508
    :cond_d9
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_ee

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_ee

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 510
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 511
    :cond_ee
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_11a

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_11a

    .line 514
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v2, :cond_10e

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 515
    const-string v2, "RnsServiceImpl"

    const-string v3, "Call is active, no attach to Wifi"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 518
    :cond_10e
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 519
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 522
    :cond_11a
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_12b

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 523
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 524
    :cond_12b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_136

    .line 525
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 527
    :cond_136
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 532
    :pswitch_13b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_151

    .line 533
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 534
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 536
    :cond_14c
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 538
    :cond_151
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 539
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 541
    :cond_15c
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 545
    :pswitch_161
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_17b

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    if-le v2, v9, :cond_17b

    .line 546
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_176

    .line 547
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 549
    :cond_176
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 551
    :cond_17b
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_190

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_190

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_190

    .line 552
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 553
    :cond_190
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 554
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 555
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 557
    :cond_1a1
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 559
    :cond_1a6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 560
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 562
    :cond_1b1
    invoke-direct {p0, v8}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_33

    .line 480
    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_13b
        :pswitch_7a
        :pswitch_161
        :pswitch_5e
    .end packed-switch
.end method

.method private makeMmsRadio()I
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 574
    iput v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 577
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 578
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 579
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_25

    .line 580
    const/4 v1, 0x0

    .line 583
    :cond_25
    packed-switch v1, :pswitch_data_fc

    .line 629
    :cond_28
    :goto_28
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMmsRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsServiceImpl;->transToReadableType(I)I

    move-result v2

    return v2

    .line 585
    :pswitch_53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 586
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_28

    .line 588
    :cond_5d
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_28

    .line 592
    :pswitch_61
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v2

    if-le v3, v2, :cond_8d

    .line 594
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_28

    .line 595
    :cond_8d
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_9d

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I

    const/16 v3, -0x74

    if-le v2, v3, :cond_9d

    .line 596
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto :goto_28

    .line 597
    :cond_9d
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 600
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    .line 601
    const-string v2, "RnsServiceImpl"

    const-string v3, "Establishing connection overWifi even the RSSI strength is less than Rove in value"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 603
    :cond_af
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-nez v2, :cond_bb

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 604
    :cond_bb
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_28

    .line 606
    :cond_c0
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_28

    .line 610
    :pswitch_c5
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_d1

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 611
    :cond_d1
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_28

    .line 613
    :cond_d6
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_28

    .line 617
    :pswitch_db
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v2

    if-nez v2, :cond_e7

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 618
    :cond_e7
    invoke-direct {p0, v6}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_28

    .line 619
    :cond_ec
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 620
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_28

    .line 622
    :cond_f7
    invoke-direct {p0, v7}, Lcom/mediatek/rns/RnsServiceImpl;->addRadio(I)V

    goto/16 :goto_28

    .line 583
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_61
        :pswitch_db
        :pswitch_53
    .end packed-switch
.end method

.method private needToSendAlertWarning()Z
    .registers 11

    .prologue
    .line 1082
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "UserPreference"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/rns/RnsPolicy;

    .line 1083
    .local v6, "userPolicy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v6}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1084
    .local v1, "mPreference":I
    iget-object v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v8, "WifiRoveThreshold"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/rns/RnsPolicy;

    .line 1085
    .local v2, "rovePolicy":Lcom/mediatek/rns/RnsPolicy;
    const/4 v0, 0x5

    .line 1086
    .local v0, "mDiff":I
    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    .line 1087
    .local v3, "roveoutvalue":I
    const/4 v4, 0x0

    .line 1088
    .local v4, "sendAlertWarning":Z
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v7

    if-eqz v7, :cond_2e

    move v5, v4

    .line 1116
    .end local v4    # "sendAlertWarning":Z
    .local v5, "sendAlertWarning":I
    :goto_2d
    return v5

    .line 1091
    .end local v5    # "sendAlertWarning":I
    .restart local v4    # "sendAlertWarning":Z
    :cond_2e
    packed-switch v1, :pswitch_data_e0

    .line 1112
    :cond_31
    :goto_31
    const-string v7, "RnsServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendAlertWarning = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iswificonnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " IsWfcEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " roveoutvalue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LastRssi : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEpdgConnected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLteNetworkReady: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1116
    .restart local v5    # "sendAlertWarning":I
    goto :goto_2d

    .line 1093
    .end local v5    # "sendAlertWarning":I
    :pswitch_95
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_9d

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_ad

    :cond_9d
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_31

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v7, :cond_31

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_31

    .line 1095
    :cond_ad
    const/4 v4, 0x1

    goto :goto_31

    .line 1100
    :pswitch_af
    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v7, :cond_b7

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z

    if-nez v7, :cond_c7

    :cond_b7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v7

    if-eqz v7, :cond_31

    iget-boolean v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v7, :cond_31

    iget v7, p0, Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I

    add-int v8, v3, v0

    if-gt v7, v8, :cond_31

    .line 1102
    :cond_c7
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-eqz v7, :cond_d6

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v7

    if-nez v7, :cond_d6

    .line 1103
    const/4 v4, 0x1

    goto/16 :goto_31

    .line 1104
    :cond_d6
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v7

    if-nez v7, :cond_31

    .line 1105
    const/4 v4, 0x1

    goto/16 :goto_31

    .line 1091
    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_af
        :pswitch_af
        :pswitch_95
    .end packed-switch
.end method

.method private sendRoveOutAlert()V
    .registers 3

    .prologue
    .line 1077
    const-string v0, "RnsServiceImpl"

    const-string v1, "send RoveOut Alert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->sendRoveOutAlert()V

    .line 1080
    return-void
.end method

.method private startRoveIn()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1019
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveIn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v0, :cond_1b

    .line 1023
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-in"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_1a

    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1043
    :cond_1a
    :goto_1a
    return-void

    .line 1030
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1031
    monitor-enter p0

    .line 1032
    :try_start_22
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v2, :cond_32

    .line 1033
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveIn is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    monitor-exit p0

    goto :goto_1a

    .line 1042
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v0

    .line 1036
    :cond_32
    :try_start_32
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-nez v0, :cond_40

    .line 1037
    :cond_3c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1039
    :cond_40
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsCallActive:Z

    if-eqz v0, :cond_51

    .line 1040
    const-string v0, "RnsServiceImpl"

    const-string v1, "Call is active, no handover to Wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_2f

    goto :goto_1a
.end method

.method private startRoveOut()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1047
    const-string v0, "RnsServiceImpl"

    const-string v1, "startRoveOut"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-eqz v0, :cond_1b

    .line 1051
    const-string v0, "RnsServiceImpl"

    const-string v1, "No rove-out"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_1a

    .line 1053
    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1066
    :cond_1a
    :goto_1a
    return-void

    .line 1058
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 1059
    monitor-enter p0

    .line 1060
    :try_start_22
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v0, v3, :cond_32

    .line 1061
    const-string v0, "RnsServiceImpl"

    const-string v1, "RoveOut is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    monitor-exit p0

    goto :goto_1a

    .line 1065
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v0

    .line 1064
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsServiceImpl;->tryConnectToRadio(I)V

    .line 1065
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_2f

    goto :goto_1a
.end method

.method private transToReadableType(I)I
    .registers 5
    .param p1, "val"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 736
    if-ne p1, v0, :cond_d

    .line 737
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_WIFI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 751
    :goto_c
    return v0

    .line 739
    :cond_d
    if-ne p1, v1, :cond_17

    .line 740
    const-string v1, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_MOBILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 742
    :cond_17
    const/4 v0, 0x4

    if-ne p1, v0, :cond_23

    .line 743
    const-string v0, "RnsServiceImpl"

    const-string v2, "make Radio = ALLOWED_RADIO_DENY"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 744
    goto :goto_c

    .line 746
    :cond_23
    const/16 v0, 0x8

    if-ne p1, v0, :cond_30

    .line 747
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_MAX"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v0, 0x3

    goto :goto_c

    .line 750
    :cond_30
    const-string v0, "RnsServiceImpl"

    const-string v1, "make Radio = ALLOWED_RADIO_NONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private tryConnectToRadio(I)V
    .registers 6
    .param p1, "radio"    # I

    .prologue
    const/4 v3, 0x1

    .line 379
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    if-nez v0, :cond_3d

    .line 380
    :cond_e
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->retryConnectToRadio(II)V

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I

    .line 393
    :cond_3c
    :goto_3c
    return-void

    .line 385
    :cond_3d
    const-string v0, "RnsServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    .line 388
    if-nez p1, :cond_60

    .line 389
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_3c

    .line 390
    :cond_60
    if-ne p1, v3, :cond_3c

    .line 391
    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    goto :goto_3c
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1494
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1496
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .line 1497
    .local v0, "i":I
    const-string v4, "Policies:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1499
    iget-object v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1500
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  policy["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    add-int/lit8 v0, v0, 0x1

    .line 1502
    goto :goto_1a

    .line 1503
    .end local v2    # "key":Ljava/lang/String;
    :cond_53
    const-string v4, "(none(-1)|wifi_only(0)|wifi_preferred(1)|cellular_only(2)|cellular_preferred(3))"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1507
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1508
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandoverInProgress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEpdgImsConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsOverLteEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCellularNetworkAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isCellularNetworkAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1520
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for IMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection for MMS type connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    const-string v4, "none(-1)|wifi(0)|moible(1)|all(2)"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    return-void
.end method

.method public getAllowedRadioList(I)I
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 398
    packed-switch p1, :pswitch_data_e

    .line 402
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeMmsRadio()I

    move-result v0

    :goto_7
    return v0

    .line 400
    :pswitch_8
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->makeImsRadio()I

    move-result v0

    goto :goto_7

    .line 398
    nop

    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_8
    .end packed-switch
.end method

.method public getRnsState()I
    .registers 2

    .prologue
    .line 465
    iget v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    return v0
.end method

.method public getTryAnotherRadioType(I)I
    .registers 14
    .param p1, "failedNetType"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 408
    const/4 v2, -0x1

    .line 409
    .local v2, "profile":I
    const/4 v0, -0x1

    .line 410
    .local v0, "netType":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsPolicy;

    .line 411
    .local v1, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 412
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v2

    .line 415
    :cond_1e
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 416
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v10, :cond_82

    if-ne p1, v10, :cond_82

    .line 418
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveIn failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_4f
    :goto_4f
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 429
    :cond_52
    packed-switch p1, :pswitch_data_14a

    .line 458
    :cond_55
    :goto_55
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTryAnotherRadioType:New network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Old network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return v0

    .line 420
    :cond_82
    iget v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    if-ne v3, v11, :cond_4f

    if-nez p1, :cond_4f

    .line 422
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveOut failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 431
    :pswitch_ae
    const/4 v3, 0x3

    if-ne v2, v3, :cond_b9

    .line 432
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_WIFI_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 433
    :cond_b9
    if-ne v2, v10, :cond_55

    .line 434
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsWfcEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_55

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_55

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 438
    const/4 v0, 0x0

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_55

    .line 444
    :pswitch_fc
    if-nez v2, :cond_107

    .line 445
    const-string v3, "RnsServiceImpl"

    const-string v4, "PREFERENCE_CELLULAR_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 446
    :cond_107
    if-ne v2, v11, :cond_55

    .line 447
    const-string v3, "RnsServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsWfcEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_55

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v3, :cond_55

    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isNetworkReady()Z

    move-result v3

    if-nez v3, :cond_55

    .line 450
    const/4 v0, 0x1

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    goto/16 :goto_55

    .line 429
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_ae
    .end packed-switch
.end method

.method public handleEventImsOverLteSettings()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1405
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventImsOverLteSettings "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const/4 v1, -0x1

    .line 1407
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1409
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1410
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1412
    :cond_21
    monitor-enter p0

    .line 1413
    :try_start_22
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ims_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_58

    .line 1415
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    .line 1419
    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_5c

    .line 1420
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsImsOverLteEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    if-nez v2, :cond_5f

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_5f

    .line 1427
    :cond_57
    :goto_57
    return-void

    .line 1417
    :cond_58
    const/4 v2, 0x0

    :try_start_59
    iput-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsImsOverLteEnabled:Z

    goto :goto_34

    .line 1419
    :catchall_5c
    move-exception v2

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_5c

    throw v2

    .line 1424
    :cond_5f
    const/4 v2, 0x3

    if-eq v1, v2, :cond_57

    .line 1425
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_57
.end method

.method public handleEventWifiDisconnect()V
    .registers 5

    .prologue
    .line 1359
    const-string v2, "RnsServiceImpl"

    const-string v3, "handle Event Wifi Disconnect "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v1, -0x1

    .line 1361
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1363
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    if-eqz v0, :cond_24

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 1364
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1366
    :cond_24
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2c

    .line 1367
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1369
    :cond_2c
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_37

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_37

    .line 1375
    :cond_36
    :goto_36
    return-void

    .line 1372
    :cond_37
    if-nez v1, :cond_3d

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_36

    .line 1373
    :cond_3d
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    goto :goto_36
.end method

.method public handleEventWifiStateChangedAction()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1380
    const-string v2, "RnsServiceImpl"

    const-string v3, "handleEventWifiStateChangedAction "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v1, -0x1

    .line 1382
    .local v1, "profile":I
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 1384
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1385
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 1387
    :cond_21
    iget v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_29

    .line 1388
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mState:I

    .line 1390
    :cond_29
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->isImsOverLteEnabled()Z

    move-result v2

    if-nez v2, :cond_34

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-nez v2, :cond_34

    .line 1400
    :cond_33
    :goto_33
    return-void

    .line 1393
    :cond_34
    if-eqz v1, :cond_3d

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-ne v2, v4, :cond_3d

    .line 1394
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->decideHandover()V

    .line 1396
    :cond_3d
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-ne v2, v4, :cond_33

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z

    if-nez v2, :cond_33

    .line 1397
    const-string v2, "RnsServiceImpl"

    const-string v3, "send Rove Out Alert warning "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V

    goto :goto_33
.end method

.method public isNeedWifiConnected(I)Z
    .registers 8
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1545
    const-string v2, "RnsServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedWifiConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWfcEnabled:Z

    if-eqz v2, :cond_59

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z

    if-eqz v2, :cond_59

    .line 1549
    iput-boolean v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    .line 1550
    iput p1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I

    .line 1551
    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    iget-object v3, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v4, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1553
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v2, 0x66

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1559
    :goto_58
    return v0

    .line 1557
    :cond_59
    iput-boolean v1, p0, Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z

    move v0, v1

    .line 1559
    goto :goto_58
.end method

.method public start()V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/mediatek/rns/RnsServiceImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsServiceImpl;->mStartTime:J

    .line 162
    return-void
.end method
