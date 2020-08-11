.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$1;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field public static final ACTION_ENABLE_NSIOT_TESTING:Ljava/lang/String; = "android.intent.action.ACTION_ENABLE_NSIOT_TESTING"

.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field public static final EXTRA_NSIOT_ENABLED:Ljava/lang/String; = "nsiot_enabled"

.field public static final EXTRA_NSIOT_IP_ADDR:Ljava/lang/String; = "nsiot_ip_addr"

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MASTERSM_IPV4:Ljava/lang/String; = "TetherMaster"

.field private static final MASTERSM_IPV6:Ljava/lang/String; = "Ipv6TetherMaster"

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field public static final SYSTEM_PROPERTY_NSIOT_PENDING:Ljava/lang/String; = "net.nsiot_pending"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true


# instance fields
.field private mBspPackage:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mGeminiSupport:Z

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mIpv6FeatureEnable:Z

.field private mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mIpv6TetherPdModeSupport:Z

.field private mIsTetheringChangeDone:Z

.field private mLooper:Landroid/os/Looper;

.field private mMtkTetheringEemSupport:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNotificationEnabledSettingObserver:Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;

.field private mNotificationSync:Ljava/lang/Object;

.field private mPreferredUpstreamMobileApn:I

.field private mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherDone:Z

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredFail:Z

.field private mTetheredNotification:Landroid/app/Notification;

.field private mTetheringIpv6Support:Z

.field private mUnTetherDone:Z

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbTetherEnabled:Z

.field private mUsbTetherRequested:Z

.field private mWifiIface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 120
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 121
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 122
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 146
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "192.168.42.254"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "192.168.43.2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "192.168.43.254"

    aput-object v2, v0, v1

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "192.168.45.2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.46.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.46.254"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "192.168.47.2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "192.168.47.254"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "192.168.48.2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "192.168.48.254"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "192.168.49.2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "192.168.49.254"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/os/Looper;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 126
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 160
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    .line 161
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    .line 162
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    .line 170
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherEnabled:Z

    .line 173
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mIsTetheringChangeDone:Z

    .line 205
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 207
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 208
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 210
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 212
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 215
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 216
    new-instance v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v4, "TetherMaster"

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 217
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->start()V

    .line 219
    const-string v3, "ro.mtk_bsp_package"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mBspPackage:Z

    .line 220
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBspPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mBspPackage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v3, "ro.mtk_gemini_support"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mGeminiSupport:Z

    .line 222
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGeminiSupport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mGeminiSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v3, "ro.mtk_tethering_eem_support"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mMtkTetheringEemSupport:Z

    .line 224
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMtkTetheringEemSupport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mMtkTetheringEemSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v3, "ro.mtk_tetheringipv6_support"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheringIpv6Support:Z

    .line 226
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTetheringIpv6Support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mTetheringIpv6Support:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v3, "ro.mtk_ipv6_tether_pd_mode"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherPdModeSupport:Z

    .line 228
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIpv6TetherPdModeSupport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherPdModeSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetheringIpv6Support()Z

    move-result v3

    if-eqz v3, :cond_102

    .line 232
    new-instance v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v4, "Ipv6TetherMaster"

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 233
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->start()V

    .line 237
    :cond_102
    new-instance v3, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v3, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v3, "android.intent.action.ACTION_ENABLE_NSIOT_TESTING"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_16a

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_185

    .line 258
    :cond_16a
    const-string v3, "persist.softap.iprange"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "rangeProp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1bc

    .line 260
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "items":[Ljava/lang/String;
    array-length v3, v1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_185

    .line 262
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 268
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "rangeProp":Ljava/lang/String;
    :cond_185
    :goto_185
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 271
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 272
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v4, "8.8.8.8"

    aput-object v4, v3, v6

    .line 273
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v4, "8.8.4.4"

    aput-object v4, v3, v7

    .line 275
    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mWifiIface:Ljava/lang/String;

    .line 278
    new-instance v3, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mNotificationEnabledSettingObserver:Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;

    .line 279
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mNotificationEnabledSettingObserver:Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->register()V

    .line 282
    const-string v3, "net.nsiot_pending"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 264
    .restart local v2    # "rangeProp":Ljava/lang/String;
    :cond_1bc
    sget-object v3, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    goto :goto_185
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;ZLjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableUdpForwardingForUsb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetheringIpv6Support()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateTetheredNotification()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Tethering;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mIsTetheringChangeDone:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->hasIpv6Address(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherEnabled:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/connectivity/Tethering;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->hasIpv6Address(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6TetherPdModeSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->hasDhcpv6PD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z

    move-result v0

    return v0
.end method

.method private clearTetheredNotification()V
    .registers 6

    .prologue
    .line 851
    const-string v1, "Tethering"

    const-string v2, "clearTetheredNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    monitor-enter v2

    .line 853
    :try_start_a
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 855
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_27

    .line 856
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 858
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 860
    :cond_27
    monitor-exit v2

    .line 861
    return-void

    .line 860
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private configureUsbIface(Z)Z
    .registers 14
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    .line 984
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureUsbIface("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-array v5, v8, [Ljava/lang/String;

    .line 989
    .local v5, "ifaces":[Ljava/lang/String;
    :try_start_21
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_5f

    move-result-object v5

    .line 994
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2a
    if-ge v3, v7, :cond_86

    aget-object v4, v1, v3

    .line 995
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 996
    const/4 v6, 0x0

    .line 998
    .local v6, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_35
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 999
    if-eqz v6, :cond_5c

    .line 1000
    const-string v9, "192.168.42.129"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1001
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v9, Landroid/net/LinkAddress;

    const/16 v10, 0x18

    invoke-direct {v9, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1002
    if-eqz p1, :cond_68

    .line 1003
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1007
    :goto_52
    const-string v9, "running"

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 1008
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5c} :catch_6c

    .line 994
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 990
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v7    # "len$":I
    :catch_5f
    move-exception v2

    .line 991
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Tethering"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_67
    return v8

    .line 1005
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v7    # "len$":I
    :cond_68
    :try_start_68
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_52

    .line 1010
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_6c
    move-exception v2

    .line 1011
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 1017
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_86
    const/4 v8, 0x1

    goto :goto_67
.end method

.method private enableUdpForwardingForUsb(ZLjava/lang/String;)Z
    .registers 14
    .param p1, "enabled"    # Z
    .param p2, "ipAddr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3036
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 3038
    .local v3, "mToast":Landroid/widget/Toast;
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v5

    .line 3039
    .local v5, "tetherInterfaces":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_47

    .line 3040
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NS-IOT]Wrong tethering state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Please only enable one tethering, now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3042
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3087
    :goto_46
    return v6

    .line 3044
    :cond_47
    aget-object v8, v5, v6

    if-nez v8, :cond_6f

    .line 3045
    const-string v7, "Tethering"

    const-string v8, "[NS-IOT]Upstream is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NS-IOT]Upstream is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3047
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_46

    .line 3051
    :cond_6f
    aget-object v1, v5, v6

    .line 3052
    .local v1, "extInterface":Ljava/lang/String;
    aget-object v2, v5, v7

    .line 3054
    .local v2, "inInterface":Ljava/lang/String;
    if-eqz p2, :cond_83

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_83

    const-string v8, "unknown"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 3056
    :cond_83
    :try_start_83
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[NS-IOT]getUsbClient("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8, v2}, Landroid/os/INetworkManagementService;->getUsbClient(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a0} :catch_c0

    .line 3062
    :goto_a0
    const-string v4, "net.rndis.client"

    .line 3063
    .local v4, "propertyName":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3064
    if-eqz p1, :cond_cc

    if-eqz p2, :cond_b0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_cc

    .line 3065
    :cond_b0
    const-string v7, "Tethering"

    const-string v8, "[NS-IOT]There is no HostPC address!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    const-string v7, "There is no HostPC address"

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3067
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_46

    .line 3058
    .end local v4    # "propertyName":Ljava/lang/String;
    :catch_c0
    move-exception v0

    .line 3059
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3060
    const-string v8, "Tethering"

    const-string v9, "[NS-IOT]getUsbClient failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 3070
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "propertyName":Ljava/lang/String;
    :cond_cc
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[NS-IOT]Disable or There is HostPC prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    .end local v4    # "propertyName":Ljava/lang/String;
    :cond_e4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableUdpForwarding("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3075
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3077
    :try_start_11b
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[NS-IOT]enableUdpForwarding("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p1, v2, v1, p2}, Landroid/os/INetworkManagementService;->enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    const/16 v9, 0x5dc

    invoke-interface {v8, v1, v9}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V

    .line 3080
    const-string v8, "net.nsiot_pending"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_164} :catch_167

    move v6, v7

    .line 3081
    goto/16 :goto_46

    .line 3082
    :catch_167
    move-exception v0

    .line 3083
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3084
    const-string v7, "Tethering"

    const-string v8, "[NS-IOT]enableUdpForwarding failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const-string v7, "enableUdpForwarding failed!"

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3086
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_46
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getResourcesUsingMccMnc(Landroid/content/Context;II)Landroid/content/res/Resources;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I

    .prologue
    .line 3093
    :try_start_0
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResourcesUsingMccMnc: mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 3095
    .local v0, "configuration":Landroid/content/res/Configuration;
    iput p2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3096
    iput p3, v0, Landroid/content/res/Configuration;->mnc:I

    .line 3097
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    .line 3098
    .local v2, "resc":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v3

    .line 3104
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v2    # "resc":Landroid/content/Context;
    :goto_33
    return-object v3

    .line 3100
    :catch_34
    move-exception v1

    .line 3101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3103
    const-string v3, "Tethering"

    const-string v4, "getResourcesUsingMccMnc fail, return null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    const/4 v3, 0x0

    goto :goto_33
.end method

.method private hasDhcpv6PD(I)Z
    .registers 6
    .param p1, "networkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1283
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6TetherPdModeSupport()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1285
    const/4 v3, -0x1

    if-ne v3, p1, :cond_b

    .line 1298
    :cond_a
    :goto_a
    return v2

    .line 1288
    :cond_b
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1289
    .local v1, "netProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_a

    .line 1292
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "iface":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->hasDhcpv6PD(Ljava/lang/String;)Z

    move-result v2

    goto :goto_a

    .line 1297
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "netProperties":Landroid/net/LinkProperties;
    :cond_1e
    const-string v2, "Tethering"

    const-string v3, "[MSM_TetherModeAlive] bypass hasDhcpv6PD"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/4 v2, 0x1

    goto :goto_a
.end method

.method private hasDhcpv6PD(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1303
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6TetherPdModeSupport()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1305
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_10
    move v2, v3

    .line 1321
    :goto_11
    return v2

    .line 1308
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net.pd."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".prefix"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1309
    .local v0, "propertyName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1310
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_40

    .line 1311
    :cond_37
    const-string v2, "Tethering"

    const-string v4, "This is No Dhcpv6PD prefix!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1312
    goto :goto_11

    .line 1314
    :cond_40
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is Dhcpv6PD prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1320
    .end local v0    # "propertyName":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_59
    const-string v3, "Tethering"

    const-string v4, "[MSM_TetherModeAlive] bypass hasDhcpv6PD"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private hasIpv4Address(I)Z
    .registers 9
    .param p1, "networkType"    # I

    .prologue
    const/4 v3, 0x0

    .line 1262
    const/4 v4, -0x1

    if-ne v4, p1, :cond_5

    .line 1279
    :cond_4
    :goto_4
    return v3

    .line 1267
    :cond_5
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1268
    .local v2, "netProperties":Landroid/net/LinkProperties;
    if-eqz v2, :cond_4

    .line 1271
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1272
    .local v1, "l":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_49

    .line 1273
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is v4 address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v3, 0x1

    goto :goto_4

    .line 1276
    :cond_49
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private hasIpv6Address(I)Z
    .registers 6
    .param p1, "networkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1232
    const/4 v3, -0x1

    if-ne v3, p1, :cond_5

    .line 1241
    :cond_4
    :goto_4
    return v2

    .line 1236
    :cond_5
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1237
    .local v1, "netProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_4

    .line 1240
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "iface":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->hasIpv6Address(Ljava/lang/String;)Z

    move-result v2

    goto :goto_4
.end method

.method private hasIpv6Address(Ljava/lang/String;)Z
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1246
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1256
    :cond_9
    :goto_9
    return v2

    .line 1249
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net.ipv6."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".prefix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "propertyName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1251
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_37

    .line 1252
    :cond_2f
    const-string v3, "Tethering"

    const-string v4, "This is No IPv6 prefix!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1255
    :cond_37
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is IPv6 prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v2, 0x1

    goto :goto_9
.end method

.method private isBspPackage()Z
    .registers 4

    .prologue
    .line 3114
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBspPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mBspPackage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBspPackage:Z

    return v0
.end method

.method private isGeminiSupport()Z
    .registers 4

    .prologue
    .line 3132
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGeminiSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mGeminiSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mGeminiSupport:Z

    return v0
.end method

.method private isIpv6MasterSmOn()Z
    .registers 2

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetheringIpv6Support()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isIpv6TetherPdModeSupport()Z
    .registers 4

    .prologue
    .line 3126
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIpv6TetherPdModeSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherPdModeSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetheringIpv6Support()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherPdModeSupport:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private isMtkTetheringEemSupport()Z
    .registers 4

    .prologue
    .line 3108
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMtkTetheringEemSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mMtkTetheringEemSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mMtkTetheringEemSupport:Z

    return v0
.end method

.method private isTetheringIpv6Support()Z
    .registers 4

    .prologue
    .line 3120
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTetheringIpv6Support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringIpv6Support:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringIpv6Support:Z

    return v0
.end method

.method private isUsb(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 406
    :try_start_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 407
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    .line 409
    .end local v3    # "regex":Ljava/lang/String;
    :goto_13
    return v4

    .line 406
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 409
    .end local v3    # "regex":Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    .line 410
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public static isValidSubscriptionId(I)Z
    .registers 2
    .param p0, "subId"    # I

    .prologue
    .line 293
    const/4 v0, -0x1

    if-le p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private readIpv6FeatureEnable()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1213
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tether_ipv6_feature"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1214
    .local v0, "value":I
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIpv6FeatureEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    if-ne v0, v1, :cond_29

    :goto_28
    return v1

    :cond_29
    move v1, v2

    goto :goto_28
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 17

    .prologue
    const v15, 0x1080691

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-nez v12, :cond_e

    .line 634
    :goto_d
    return-void

    .line 560
    :cond_e
    const-string v12, "Tethering"

    const-string v13, "sendTetherStateChangedBroadcast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v2, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v5, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 567
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 568
    .local v10, "usbTethered":Z
    const/4 v3, 0x0

    .line 570
    .local v3, "bluetoothTethered":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v13

    .line 571
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 572
    .local v8, "ifaces":Ljava/util/Set;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 573
    .local v7, "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 574
    .local v9, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v9, :cond_38

    .line 575
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v12

    if-eqz v12, :cond_64

    .line 576
    const-string v12, "Tethering"

    const-string v14, "add err"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 596
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "ifaces":Ljava/util/Set;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_61
    move-exception v12

    monitor-exit v13
    :try_end_63
    .catchall {:try_start_2c .. :try_end_63} :catchall_61

    throw v12

    .line 578
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "iface":Ljava/lang/Object;
    .restart local v8    # "ifaces":Ljava/util/Set;
    .restart local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_64
    :try_start_64
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_77

    .line 579
    const-string v12, "Tethering"

    const-string v14, "add avai"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 581
    .restart local v7    # "iface":Ljava/lang/Object;
    :cond_77
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v12

    if-eqz v12, :cond_38

    .line 582
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_97

    .line 583
    const-string v12, "Tethering"

    const-string v14, "usb isTethered"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v10, 0x1

    .line 592
    :cond_91
    :goto_91
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 585
    .restart local v7    # "iface":Ljava/lang/Object;
    :cond_97
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 586
    const-string v12, "Tethering"

    const-string v14, "wifi isTethered"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v11, 0x1

    goto :goto_91

    .line 588
    :cond_ac
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_91

    .line 589
    const-string v12, "Tethering"

    const-string v14, "bt isTethered"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v3, 0x1

    goto :goto_91

    .line 596
    .end local v7    # "iface":Ljava/lang/Object;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_c1
    monitor-exit v13
    :try_end_c2
    .catchall {:try_start_64 .. :try_end_c2} :catchall_61

    .line 597
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v4, "broadcast":Landroid/content/Intent;
    const/high16 v12, 0x24000000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    const-string v12, "availableArray"

    invoke-virtual {v4, v12, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 602
    const-string v12, "activeArray"

    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 603
    const-string v12, "erroredArray"

    invoke-virtual {v4, v12, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 606
    const-string v12, "UnTetherDone"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    const-string v12, "TetherDone"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 608
    const-string v12, "TetherFail"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 612
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendTetherStateChangedBroadcast "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-eqz v10, :cond_154

    .line 617
    if-nez v11, :cond_13f

    if-eqz v3, :cond_148

    .line 618
    :cond_13f
    const-string v12, "comb"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 620
    :cond_148
    const v12, 0x1080692

    const-string v13, "usb"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 622
    :cond_154
    if-eqz v11, :cond_16d

    .line 623
    if-eqz v3, :cond_161

    .line 624
    const-string v12, "comb"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 626
    :cond_161
    const v12, 0x802013c

    const-string v13, "wifi"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 628
    :cond_16d
    if-eqz v3, :cond_17b

    .line 629
    const v12, 0x1080690

    const-string v13, "bt"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 631
    :cond_17b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_d
.end method

.method private showTetheredNotification(ILjava/lang/String;)V
    .registers 28
    .param p1, "icon"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 660
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTetheredNotification icon:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 662
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 664
    .local v19, "notificationManager":Landroid/app/NotificationManager;
    if-nez v19, :cond_3d

    .line 665
    monitor-exit v24

    .line 763
    :goto_3c
    return-void

    .line 668
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 669
    .local v18, "mgr":Landroid/net/wifi/WifiManager;
    if-nez v18, :cond_50

    .line 670
    monitor-exit v24

    goto :goto_3c

    .line 762
    .end local v18    # "mgr":Landroid/net/wifi/WifiManager;
    .end local v19    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_4d
    move-exception v2

    monitor-exit v24
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_4d

    throw v2

    .line 673
    .restart local v18    # "mgr":Landroid/net/wifi/WifiManager;
    .restart local v19    # "notificationManager":Landroid/app/NotificationManager;
    :cond_50
    :try_start_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v2, :cond_70

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_62

    .line 675
    monitor-exit v24

    goto :goto_3c

    .line 677
    :cond_62
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 681
    :cond_70
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 683
    .local v4, "intent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->isBspPackage()Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 684
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    :goto_82
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v20

    .line 698
    .local v20, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    .line 699
    .local v21, "r":Landroid/content/res/Resources;
    const v2, 0x104055f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 701
    .local v23, "title":Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .line 702
    .local v15, "message":Ljava/lang/String;
    const/16 v16, 0x0

    .line 703
    .local v16, "message_1":Ljava/lang/String;
    const/16 v17, 0x0

    .line 705
    .local v17, "message_2":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->isBspPackage()Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 706
    const v2, 0x1040560

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 730
    :goto_b5
    move-object/from16 v16, v15

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "interface_throttle_enable"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20b

    const/4 v13, 0x1

    .line 733
    .local v13, "enable":Z
    :goto_ca
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INTERFACE_THROTTLE enable:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v13, :cond_11c

    const-string v2, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f8

    const-string v2, "comb"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 736
    :cond_f8
    const v2, 0x80500b3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 741
    :cond_11c
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1060059

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 751
    .local v9, "builder":Landroid/app/Notification$Builder;
    new-instance v2, Landroid/app/Notification$InboxStyle;

    invoke-direct {v2, v9}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v22

    .line 753
    .local v22, "style":Landroid/app/Notification$InboxStyle;
    if-eqz v17, :cond_172

    .line 755
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 758
    :cond_172
    invoke-virtual/range {v22 .. v22}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 760
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 762
    monitor-exit v24

    goto/16 :goto_3c

    .line 686
    .end local v9    # "builder":Landroid/app/Notification$Builder;
    .end local v13    # "enable":Z
    .end local v15    # "message":Ljava/lang/String;
    .end local v16    # "message_1":Ljava/lang/String;
    .end local v17    # "message_2":Ljava/lang/String;
    .end local v20    # "pi":Landroid/app/PendingIntent;
    .end local v21    # "r":Landroid/content/res/Resources;
    .end local v22    # "style":Landroid/app/Notification$InboxStyle;
    .end local v23    # "title":Ljava/lang/CharSequence;
    :cond_18f
    const-string v2, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 687
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.hotspot.TetherWifiSettings"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_82

    .line 689
    :cond_1a2
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_82

    .line 708
    .restart local v15    # "message":Ljava/lang/String;
    .restart local v16    # "message_1":Ljava/lang/String;
    .restart local v17    # "message_2":Ljava/lang/String;
    .restart local v20    # "pi":Landroid/app/PendingIntent;
    .restart local v21    # "r":Landroid/content/res/Resources;
    .restart local v23    # "title":Ljava/lang/CharSequence;
    :cond_1ab
    const-string v2, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bf

    const-string v2, "comb"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 709
    :cond_1bf
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v11

    .line 710
    .local v11, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    const/4 v12, 0x0

    .line 711
    .local v12, "connected":I
    const/4 v8, 0x0

    .line 712
    .local v8, "blocked":I
    if-eqz v11, :cond_1e4

    .line 713
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_1cb
    :goto_1cb
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1de

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/HotspotClient;

    .line 714
    .local v10, "client":Landroid/net/wifi/HotspotClient;
    iget-boolean v2, v10, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v2, :cond_1cb

    .line 715
    add-int/lit8 v8, v8, 0x1

    goto :goto_1cb

    .line 718
    .end local v10    # "client":Landroid/net/wifi/HotspotClient;
    :cond_1de
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int v12, v2, v8

    .line 720
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_1e4
    const v2, 0x80500b2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 722
    goto/16 :goto_b5

    .line 723
    .end local v8    # "blocked":I
    .end local v11    # "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    .end local v12    # "connected":I
    :cond_200
    const v2, 0x1040560

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_208
    .catchall {:try_start_50 .. :try_end_208} :catchall_4d

    move-result-object v15

    goto/16 :goto_b5

    .line 731
    :cond_20b
    const/4 v13, 0x0

    goto/16 :goto_ca
.end method

.method private tetherUsb(Z)V
    .registers 12
    .param p1, "enable"    # Z

    .prologue
    .line 955
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tetherUsb "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    .line 959
    .local v4, "ifaces":[Ljava/lang/String;
    :try_start_1b
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v4

    .line 960
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_24
    if-ge v2, v5, :cond_47

    aget-object v3, v0, v2

    .line 961
    .local v3, "iface":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 962
    if-eqz p1, :cond_37

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 963
    .local v6, "result":I
    :goto_34
    if-nez v6, :cond_3c

    .line 980
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "result":I
    :goto_36
    return-void

    .line 962
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "iface":Ljava/lang/String;
    .restart local v5    # "len$":I
    :cond_37
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_3f

    move-result v6

    goto :goto_34

    .line 960
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 968
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v5    # "len$":I
    :catch_3f
    move-exception v1

    .line 969
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Tethering"

    const-string v8, "Error listing Interfaces"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_47
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    .line 976
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 977
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 979
    const-string v7, "Tethering"

    const-string v8, "unable start or stop USB tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private updateTetheredNotification()V
    .registers 30

    .prologue
    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 768
    const/16 v23, 0x0

    .line 769
    .local v23, "wifiTethered":Z
    :try_start_9
    const-string v24, "Tethering"

    const-string v26, "updateTetheredNotification"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 771
    .local v13, "ifaces":Ljava/util/Set;
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 772
    .local v12, "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 773
    .local v20, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v20, :cond_22

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v24

    if-eqz v24, :cond_22

    check-cast v12, Ljava/lang/String;

    .end local v12    # "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 774
    const/16 v23, 0x1

    goto :goto_22

    .line 778
    .end local v20    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4f
    const-string v24, "Tethering"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "INTERFACE_THROTTLE::onChange,wifiTethered = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    if-nez v23, :cond_73

    .line 781
    monitor-exit v25

    .line 847
    :goto_72
    return-void

    .line 784
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v26, "notification"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 786
    .local v18, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v26, "wifi"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 787
    .local v17, "mgr":Landroid/net/wifi/WifiManager;
    if-eqz v18, :cond_a3

    if-eqz v17, :cond_a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v24, v0

    if-nez v24, :cond_a8

    .line 788
    :cond_a3
    monitor-exit v25

    goto :goto_72

    .line 846
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "ifaces":Ljava/util/Set;
    .end local v17    # "mgr":Landroid/net/wifi/WifiManager;
    .end local v18    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_a5
    move-exception v24

    monitor-exit v25
    :try_end_a7
    .catchall {:try_start_9 .. :try_end_a7} :catchall_a5

    throw v24

    .line 790
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "ifaces":Ljava/util/Set;
    .restart local v17    # "mgr":Landroid/net/wifi/WifiManager;
    .restart local v18    # "notificationManager":Landroid/app/NotificationManager;
    :cond_a8
    :try_start_a8
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v8

    .line 791
    .local v8, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    const/4 v9, 0x0

    .line 792
    .local v9, "connected":I
    const/4 v5, 0x0

    .line 793
    .local v5, "blocked":I
    if-eqz v8, :cond_cf

    .line 794
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b4
    :goto_b4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/HotspotClient;

    .line 795
    .local v7, "client":Landroid/net/wifi/HotspotClient;
    iget-boolean v0, v7, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b4

    .line 796
    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    .line 799
    .end local v7    # "client":Landroid/net/wifi/HotspotClient;
    :cond_c9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v24

    sub-int v9, v24, v5

    .line 801
    :cond_cf
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 802
    .local v19, "r":Landroid/content/res/Resources;
    const v24, 0x104055f

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 804
    .local v22, "title":Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 805
    .local v14, "message":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->isBspPackage()Z

    move-result v24

    if-eqz v24, :cond_222

    .line 806
    const v24, 0x1040560

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 814
    :goto_f0
    move-object v15, v14

    .line 815
    .local v15, "message_1":Ljava/lang/String;
    const/16 v16, 0x0

    .line 816
    .local v16, "message_2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "interface_throttle_enable"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_249

    const/4 v10, 0x1

    .line 818
    .local v10, "enable":Z
    :goto_114
    const-string v24, "Tethering"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "INTERFACE_THROTTLE enable:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    if-eqz v10, :cond_160

    .line 821
    const v24, 0x80500b3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 822
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, ", "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 825
    :cond_160
    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    const-string v26, "status"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1060059

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 835
    .local v6, "builder":Landroid/app/Notification$Builder;
    new-instance v24, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v21

    .line 838
    .local v21, "style":Landroid/app/Notification$InboxStyle;
    if-eqz v16, :cond_1f2

    .line 840
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 842
    :cond_1f2
    invoke-virtual/range {v21 .. v21}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 844
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v27, v0

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 846
    monitor-exit v25

    goto/16 :goto_72

    .line 808
    .end local v6    # "builder":Landroid/app/Notification$Builder;
    .end local v10    # "enable":Z
    .end local v15    # "message_1":Ljava/lang/String;
    .end local v16    # "message_2":Ljava/lang/String;
    .end local v21    # "style":Landroid/app/Notification$InboxStyle;
    :cond_222
    const v24, 0x80500b2

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_246
    .catchall {:try_start_a8 .. :try_end_246} :catchall_a5

    move-result-object v14

    goto/16 :goto_f0

    .line 816
    .restart local v15    # "message_1":Ljava/lang/String;
    .restart local v16    # "message_2":Ljava/lang/String;
    :cond_249
    const/4 v10, 0x0

    goto/16 :goto_114
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 492
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addressRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3c

    invoke-virtual {p2}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 495
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 497
    :cond_3c
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 483
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addressUpdated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3c

    invoke-virtual {p2}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 486
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 488
    :cond_3c
    return-void
.end method

.method public checkDunRequired()V
    .registers 9

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x4

    .line 1090
    const/4 v1, 0x2

    .line 1091
    .local v1, "secureSetting":I
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1092
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_13

    .line 1093
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v1

    .line 1095
    :cond_13
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1097
    :try_start_16
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDunRequired:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v5, 0x2

    if-eq v1, v5, :cond_6f

    .line 1099
    const/4 v5, 0x1

    if-ne v1, v5, :cond_35

    move v0, v3

    .line 1102
    .local v0, "requiredApn":I
    :cond_35
    if-ne v0, v3, :cond_98

    .line 1103
    :goto_37
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1104
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1130
    .end local v0    # "requiredApn":I
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_49

    throw v3

    .line 1106
    .restart local v0    # "requiredApn":I
    :cond_4c
    :goto_4c
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1107
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 1109
    :cond_5e
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 1110
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1124
    .end local v0    # "requiredApn":I
    :cond_6f
    :goto_6f
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 1125
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 1129
    :goto_7c
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPreferredUpstreamMobileApn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    monitor-exit v4

    .line 1131
    return-void

    .line 1113
    .restart local v0    # "requiredApn":I
    :cond_98
    :goto_98
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 1114
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_98

    .line 1116
    :cond_aa
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    .line 1117
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_bb
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 1120
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 1127
    .end local v0    # "requiredApn":I
    :cond_cd
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_d0
    .catchall {:try_start_4c .. :try_end_d0} :catchall_49

    goto :goto_7c
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3002
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 3004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    :goto_32
    return-void

    .line 3010
    :cond_33
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 3011
    :try_start_36
    const-string v3, "mUpstreamIfaceTypes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3013
    .local v1, "netType":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    .line 3021
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netType":Ljava/lang/Integer;
    :catchall_64
    move-exception v3

    monitor-exit v4
    :try_end_66
    .catchall {:try_start_36 .. :try_end_66} :catchall_64

    throw v3

    .line 3016
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_67
    :try_start_67
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3017
    const-string v3, "Tether state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3019
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    .line 3021
    .end local v2    # "o":Ljava/lang/Object;
    :cond_9a
    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_67 .. :try_end_9b} :catchall_64

    .line 3022
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_32
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 1190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1192
    :try_start_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1193
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1194
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1195
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1196
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1199
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 1200
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1201
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 1202
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1204
    :cond_4c
    return-object v5
.end method

.method public getIpv6FeatureEnable()Z
    .registers 2

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    return v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 537
    const/4 v2, 0x0

    .line 538
    .local v2, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 539
    :try_start_4
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v2, v0

    .line 540
    if-nez v2, :cond_31

    .line 541
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x1

    monitor-exit v4

    .line 550
    :goto_30
    return v1

    .line 545
    :cond_31
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v1

    .line 546
    .local v1, "error":I
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isBspPackage()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetheringIpv6Support()Z

    move-result v3

    if-eqz v3, :cond_4e

    and-int/lit16 v3, v1, 0xf0

    const/16 v5, 0x10

    if-ne v3, v5, :cond_4e

    .line 547
    and-int/lit8 v1, v1, 0xf

    monitor-exit v4

    goto :goto_30

    .line 552
    .end local v1    # "error":I
    :catchall_4b
    move-exception v3

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v3

    .line 550
    .restart local v1    # "error":I
    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    goto :goto_30
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 1168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1170
    :try_start_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1171
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1172
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1173
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1174
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1177
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 1178
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1179
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 1180
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1182
    :cond_4c
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 1154
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1155
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1156
    :try_start_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1157
    .local v2, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1158
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTetheredIfacePairs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1163
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_54
    move-exception v3

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_57
    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_54

    .line 1164
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 1135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1137
    :try_start_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1138
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1139
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1140
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1141
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1144
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 1145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1146
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 1147
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1149
    :cond_4c
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .registers 6

    .prologue
    .line 1078
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1079
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1080
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1081
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1082
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 1083
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1085
    :cond_2c
    monitor-exit v4

    .line 1086
    return-object v2

    .line 1085
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceAdded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 435
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 436
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 437
    const/4 v0, 0x1

    .line 439
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 440
    const/4 v0, 0x1

    .line 441
    const/4 v2, 0x1

    .line 443
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 444
    const/4 v0, 0x1

    .line 446
    :cond_33
    if-nez v0, :cond_4f

    .line 447
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    monitor-exit v4

    .line 462
    :goto_4e
    return-void

    .line 451
    :cond_4f
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 452
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_7c

    .line 453
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") reported as added, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v4

    goto :goto_4e

    .line 460
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_79
    move-exception v3

    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_1d .. :try_end_7b} :catchall_79

    throw v3

    .line 457
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7c
    :try_start_7c
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 458
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 460
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_79

    .line 461
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceAdded :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 400
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceLinkStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 402
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interfaceRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 467
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 468
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_45

    .line 470
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit v2

    .line 478
    :goto_44
    return-void

    .line 474
    :cond_45
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interfaceRemoved, iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sendMessage:CMD_INTERFACE_DOWN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 476
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    monitor-exit v2

    goto :goto_44

    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_6e
    move-exception v1

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_1b .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 363
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 366
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 367
    :try_start_27
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 368
    const/4 v0, 0x1

    .line 375
    :cond_2e
    :goto_2e
    if-nez v0, :cond_43

    monitor-exit v4

    .line 397
    :goto_31
    return-void

    .line 369
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 370
    const/4 v0, 0x1

    .line 371
    const/4 v2, 0x1

    goto :goto_2e

    .line 372
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 373
    const/4 v0, 0x1

    goto :goto_2e

    .line 377
    :cond_43
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 378
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_63

    .line 379
    if-nez v1, :cond_5e

    .line 380
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 381
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 396
    :cond_5e
    :goto_5e
    monitor-exit v4

    goto :goto_31

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_27 .. :try_end_62} :catchall_60

    throw v3

    .line 388
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_63
    :try_start_63
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 389
    :cond_6f
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore interface down for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 390
    :cond_88
    if-eqz v1, :cond_5e

    .line 391
    const-string v3, "Tethering"

    const-string v5, "interfaceLinkStatusChanged, sm!=null, sendMessage:CMD_INTERFACE_DOWN"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 393
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catchall {:try_start_63 .. :try_end_9a} :catchall_60

    goto :goto_5e
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 424
    :try_start_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 425
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    .line 427
    .end local v3    # "regex":Ljava/lang/String;
    :goto_13
    return v4

    .line 424
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 427
    .end local v3    # "regex":Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    .line 428
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public isTetheringChangeDone()Z
    .registers 2

    .prologue
    .line 3030
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIsTetheringChangeDone:Z

    return v0
.end method

.method public isWifi(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 415
    :try_start_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 416
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    .line 418
    .end local v3    # "regex":Ljava/lang/String;
    :goto_13
    return v4

    .line 415
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 418
    .end local v3    # "regex":Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    .line 419
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public setIpv6FeatureEnable(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 1223
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIpv6FeatureEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    if-eqz p1, :cond_39

    const/4 v0, 0x1

    .line 1225
    .local v0, "value":I
    :goto_27
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    if-eq v1, p1, :cond_38

    .line 1226
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    .line 1227
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_ipv6_feature"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1229
    :cond_38
    return-void

    .line 1224
    .end local v0    # "value":I
    :cond_39
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setUsbTethering(Z)I
    .registers 10
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1034
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUsbTethering("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1039
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherEnabled:Z

    .line 1041
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1043
    const/4 v2, 0x0

    :try_start_30
    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    .line 1044
    if-eqz p1, :cond_78

    .line 1045
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    .line 1046
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v2, :cond_41

    .line 1047
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1072
    :goto_3f
    monitor-exit v3

    .line 1073
    return v6

    .line 1049
    :cond_41
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 1053
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "usb_tethering_type"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1054
    .local v1, "value":I
    if-ne v1, v7, :cond_6a

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isMtkTetheringEemSupport()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1055
    const-string v2, "Tethering"

    const-string v4, "The MTK_TETHERING_EEM_SUPPORT is True"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v2, "eem"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_3f

    .line 1072
    .end local v1    # "value":I
    :catchall_67
    move-exception v2

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_30 .. :try_end_69} :catchall_67

    throw v2

    .line 1058
    .restart local v1    # "value":I
    :cond_6a
    :try_start_6a
    const-string v2, "Tethering"

    const-string v4, "The MTK_TETHERING_RNDIS only"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string v2, "rndis"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_3f

    .line 1065
    .end local v1    # "value":I
    :cond_78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    .line 1066
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1067
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v2, :cond_88

    .line 1068
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1070
    :cond_88
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_8b
    .catchall {:try_start_6a .. :try_end_8b} :catchall_67

    goto :goto_3f
.end method

.method public tether(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 504
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 505
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_49

    .line 506
    if-nez v1, :cond_4c

    .line 507
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v2, 0x1

    .line 515
    :goto_48
    return v2

    .line 505
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2

    .line 510
    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_78

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-nez v2, :cond_78

    .line 511
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v2, 0x4

    goto :goto_48

    .line 514
    :cond_78
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 515
    const/4 v2, 0x0

    goto :goto_48
.end method

.method public untether(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 519
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 522
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 523
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_49

    .line 524
    if-nez v1, :cond_4c

    .line 525
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v2, 0x1

    .line 533
    :goto_48
    return v2

    .line 523
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2

    .line 528
    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 529
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untethered an errored iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v2, 0x4

    goto :goto_48

    .line 532
    :cond_72
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 533
    const/4 v2, 0x0

    goto :goto_48
.end method

.method updateConfiguration()V
    .registers 24

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1070011

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 299
    .local v17, "tetherableUsbRegexs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1070012

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 301
    .local v18, "tetherableWifiRegexs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1070014

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 304
    .local v16, "tetherableBluetoothRegexs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 305
    .local v6, "ifaceTypes":[I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->isGeminiSupport()Z

    move-result v20

    if-eqz v20, :cond_75

    .line 307
    :try_start_3a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 308
    .local v8, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v15

    .line 309
    .local v15, "subId":I
    const/4 v13, 0x0

    .line 312
    .local v13, "sMccMnc":Ljava/lang/String;
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v20

    if-eqz v20, :cond_4d

    .line 313
    invoke-virtual {v8, v15}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v13

    .line 315
    :cond_4d
    if-eqz v13, :cond_5b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c2

    .line 316
    :cond_5b
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateConfiguration: wrong MCCMNC ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_75} :catch_119

    .line 334
    .end local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v13    # "sMccMnc":Ljava/lang/String;
    .end local v15    # "subId":I
    :cond_75
    :goto_75
    if-nez v6, :cond_8f

    .line 335
    const-string v20, "Tethering"

    const-string v21, "ifaceTypes = null, use default"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1070017

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 339
    :cond_8f
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v19, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v2, v6

    .local v2, "arr$":[I
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_97
    if-ge v5, v7, :cond_11f

    aget v4, v2, v5

    .line 341
    .local v4, "i":I
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "upstreamIfaceTypes.add:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v19 .. v20}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    .line 318
    .end local v2    # "arr$":[I
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v19    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v13    # "sMccMnc":Ljava/lang/String;
    .restart local v15    # "subId":I
    :cond_c2
    :try_start_c2
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateConfiguration: MCCMNC ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 320
    .local v12, "sMcc":Ljava/lang/String;
    const/16 v20, 0x3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 321
    .local v14, "sMnc":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 322
    .local v9, "mcc":I
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 324
    .local v10, "mnc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9, v10}, Lcom/android/server/connectivity/Tethering;->getResourcesUsingMccMnc(Landroid/content/Context;II)Landroid/content/res/Resources;

    move-result-object v11

    .line 325
    .local v11, "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_75

    .line 326
    const v20, 0x1070017

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_116} :catch_119

    move-result-object v6

    goto/16 :goto_75

    .line 330
    .end local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v9    # "mcc":I
    .end local v10    # "mnc":I
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "sMcc":Ljava/lang/String;
    .end local v13    # "sMccMnc":Ljava/lang/String;
    .end local v14    # "sMnc":Ljava/lang/String;
    .end local v15    # "subId":I
    :catch_119
    move-exception v3

    .line 331
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_75

    .line 345
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "arr$":[I
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v19    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 346
    :try_start_126
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 347
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 348
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 349
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 350
    monitor-exit v21
    :try_end_13f
    .catchall {:try_start_126 .. :try_end_13f} :catchall_153

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->isTetheringIpv6Support()Z

    move-result v20

    if-eqz v20, :cond_152

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->readIpv6FeatureEnable()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    .line 360
    :cond_152
    return-void

    .line 350
    :catchall_153
    move-exception v20

    :try_start_154
    monitor-exit v21
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    throw v20
.end method
