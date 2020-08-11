.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$LogSSC;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_LOC:Z = false

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_UPDATE_PHONE_SUB_ID_MAPPING:I = 0x3

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0x40ec

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z = true


# instance fields
.field private hasNotifySubscriptionInfoChangedOccurred:Z

.field private logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

.field private mBackgroundCallState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:[I

.field private mDataConnectionApn:[Ljava/lang/String;

.field private mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

.field private mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionPossible:[Z

.field private mDataConnectionReason:[Ljava/lang/String;

.field private mDataConnectionState:[I

.field private mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mForegroundCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mImsApnTypes:[Ljava/lang/String;

.field private mImsDataConnState:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOtaspMode:I

.field private mPreciseCallState:Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSubIdMapping:[I

.field private mVoLteServiceState:Landroid/telephony/VoLteServiceState;

.field private next:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 136
    iput-boolean v6, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 157
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ims"

    aput-object v5, v4, v6

    const-string v5, "emergency"

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsApnTypes:[Ljava/lang/String;

    .line 178
    iput v8, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 180
    iput-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 182
    new-instance v4, Landroid/telephony/VoLteServiceState;

    invoke-direct {v4}, Landroid/telephony/VoLteServiceState;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 184
    iput v7, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 186
    iput v7, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 188
    new-instance v4, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-direct {v4}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    .line 190
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 192
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 194
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 196
    new-instance v4, Landroid/telephony/PreciseCallState;

    invoke-direct {v4}, Landroid/telephony/PreciseCallState;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 198
    new-instance v4, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v4}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 220
    new-instance v4, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v4, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 265
    new-instance v4, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v4, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1745
    const/16 v4, 0xa

    new-array v4, v4, [Lcom/android/server/TelephonyRegistry$LogSSC;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    .line 1746
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->next:I

    .line 307
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 309
    .local v2, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 313
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 314
    .local v3, "numPhones":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TelephonyRegistor: ctor numPhones="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 315
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 316
    new-array v4, v3, [Ljava/util/ArrayList;

    check-cast v4, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    .line 317
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 318
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 319
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 320
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 321
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 322
    new-array v4, v3, [Landroid/telephony/ServiceState;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 323
    new-array v4, v3, [Landroid/telephony/SignalStrength;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 324
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 325
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    .line 326
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    .line 327
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    .line 328
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 329
    new-array v4, v3, [Landroid/os/Bundle;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 330
    new-array v4, v3, [Landroid/net/LinkProperties;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    .line 331
    new-array v4, v3, [Landroid/net/NetworkCapabilities;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    .line 332
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 333
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    .line 336
    new-array v4, v3, [Ljava/util/HashMap;

    check-cast v4, [Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsDataConnState:[Ljava/util/HashMap;

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e4
    if-ge v0, v3, :cond_14d

    .line 339
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v0

    .line 340
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v6, v4, v0

    .line 341
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v6, v4, v0

    .line 342
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v7, v4, v0

    .line 343
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v0

    .line 344
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v5, v4, v0

    .line 345
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v5, v4, v0

    .line 346
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v6, v4, v0

    .line 347
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v6, v4, v0

    .line 348
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aput-boolean v6, v4, v0

    .line 349
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v0

    .line 350
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v0

    .line 351
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    aput-object v5, v4, v0

    .line 352
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 353
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    aput v5, v4, v0

    .line 356
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsDataConnState:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v4, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_e4

    .line 361
    :cond_14d
    if-eqz v2, :cond_15c

    .line 362
    const/4 v0, 0x0

    :goto_150
    if-ge v0, v3, :cond_15c

    .line 363
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_150

    .line 369
    :cond_15c
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_15d
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsDataConnState:[Ljava/util/HashMap;

    array-length v4, v4

    if-ge v1, v4, :cond_17d

    .line 370
    const/4 v0, 0x0

    :goto_163
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsApnTypes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_17a

    .line 371
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsDataConnState:[Ljava/util/HashMap;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsApnTypes:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_163

    .line 369
    :cond_17a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    .line 374
    :cond_17d
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->onUpdatePhoneSubIdMapping()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/TelephonyRegistry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TelephonyRegistry;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 1502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1504
    .local v0, "ident":J
    if-nez p1, :cond_3c

    .line 1505
    :try_start_6
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_42
    .catchall {:try_start_6 .. :try_end_b} :catchall_47

    .line 1512
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1515
    :goto_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1519
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    :cond_2d
    const-string v3, "subscription"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1524
    return-void

    .line 1507
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3c
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42
    .catchall {:try_start_3c .. :try_end_41} :catchall_47

    goto :goto_b

    .line 1509
    :catch_42
    move-exception v3

    .line 1512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_47
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastCallStateChangedForPhoneInfo(ILjava/lang/String;III)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "phoneType"    # I
    .param p5, "subId"    # I

    .prologue
    .line 1474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1476
    .local v0, "ident":J
    if-nez p1, :cond_46

    .line 1477
    :try_start_6
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_4c
    .catchall {:try_start_6 .. :try_end_b} :catchall_51

    .line 1484
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    :goto_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1491
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    :cond_2d
    const-string v3, "subscription"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1494
    const-string v3, "phone"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1495
    const-string v3, "phoneType"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1496
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1498
    return-void

    .line 1479
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_46
    :try_start_46
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catchall {:try_start_46 .. :try_end_4b} :catchall_51

    goto :goto_b

    .line 1481
    :catch_4c
    move-exception v3

    .line 1484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_51
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "phoneId"    # I

    .prologue
    .line 1567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1568
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1569
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1571
    const-string v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1573
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1574
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZIIZ)V
    .registers 16
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "subId"    # I
    .param p10, "phoneId"    # I
    .param p11, "bIsIMSChanged"    # Z

    .prologue
    .line 1534
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1537
    if-nez p2, :cond_1c

    .line 1538
    const-string v2, "networkUnvailable"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1540
    :cond_1c
    if-eqz p3, :cond_23

    .line 1541
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    :cond_23
    if-eqz p6, :cond_35

    .line 1544
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1545
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 1547
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    .end local v0    # "iface":Ljava/lang/String;
    :cond_35
    if-eqz p7, :cond_3c

    .line 1551
    const-string v2, "networkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1553
    :cond_3c
    if-eqz p8, :cond_44

    const-string v2, "networkRoaming"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1555
    :cond_44
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v2, "subscription"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1558
    const-string v2, "phone"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1559
    if-eqz p11, :cond_60

    .line 1560
    const-string v2, "imsDataChanged"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1562
    :cond_60
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1563
    return-void
.end method

.method private broadcastPreciseCallStateChanged(IIIII)V
    .registers 10
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    .prologue
    .line 1578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ringing_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    const-string v1, "foreground_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1581
    const-string v1, "background_state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1582
    const-string v1, "disconnect_cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1583
    const-string v1, "precise_disconnect_cause"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1584
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1586
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1593
    const-string v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1594
    if-eqz p5, :cond_18

    const-string v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    :cond_18
    if-eqz p3, :cond_1f

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    :cond_1f
    if-eqz p4, :cond_26

    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    :cond_26
    if-eqz p6, :cond_2d

    .line 1598
    const-string v1, "linkProperties"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1600
    :cond_2d
    if-eqz p7, :cond_34

    const-string v1, "failCause"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    :cond_34
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1604
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .registers 10
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I

    .prologue
    .line 1424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1426
    .local v2, "ident":J
    :try_start_4
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_31
    .catchall {:try_start_4 .. :try_end_d} :catchall_36

    .line 1430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    :goto_10
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1435
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1436
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1440
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 1441
    .local v4, "phoneId":I
    invoke-static {v1, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1443
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1444
    return-void

    .line 1427
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "phoneId":I
    :catch_31
    move-exception v5

    .line 1430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .registers 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subId"    # I

    .prologue
    .line 1447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1449
    .local v2, "ident":J
    :try_start_4
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_32
    .catchall {:try_start_4 .. :try_end_9} :catchall_37

    .line 1453
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1456
    :goto_c
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SIG_STR"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1459
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1460
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1463
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 1464
    .local v4, "phoneId":I
    invoke-static {v1, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1466
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1467
    return-void

    .line 1450
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "phoneId":I
    :catch_32
    move-exception v5

    .line 1453
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_37
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private checkListenerPermission(I)V
    .registers 5
    .param p1, "events"    # I

    .prologue
    const/4 v2, 0x0

    .line 1618
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    .line 1619
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_c
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_17

    .line 1625
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    :cond_17
    and-int/lit16 v0, p1, 0x40ec

    if-eqz v0, :cond_22

    .line 1631
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    :cond_22
    and-int/lit16 v0, p1, 0x1800

    if-eqz v0, :cond_2d

    .line 1636
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :cond_2d
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3a

    .line 1642
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :cond_3a
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1607
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 1609
    const/4 v1, 0x1

    .line 1614
    :goto_b
    return v1

    .line 1611
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1614
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private checkOnSubscriptionsChangedListenerPermission()V
    .registers 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    .line 1825
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 1827
    .local v0, "events":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2e

    .line 1829
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPossibleMissNotify: onServiceStateChanged state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1831
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2e} :catch_14f

    .line 1838
    :cond_2e
    :goto_2e
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_56

    .line 1840
    :try_start_32
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v4, p2

    .line 1842
    .local v3, "signalStrength":Landroid/telephony/SignalStrength;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPossibleMissNotify: onSignalStrengthsChanged SS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1844
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_56} :catch_159

    .line 1850
    .end local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_56
    :goto_56
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_82

    .line 1852
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 1855
    .local v2, "gsmSignalStrength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPossibleMissNotify: onSignalStrengthChanged SS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1858
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_7f

    const/4 v2, -0x1

    .end local v2    # "gsmSignalStrength":I
    :cond_7f
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_82} :catch_163

    .line 1865
    :cond_82
    :goto_82
    const/16 v4, 0x400

    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 1871
    :try_start_8a
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_97} :catch_16d

    .line 1877
    :cond_97
    :goto_97
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_c8

    .line 1880
    :try_start_9b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPossibleMissNotify: onMessageWaitingIndicatorChanged phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mwi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1883
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, p2

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_c8} :catch_177

    .line 1890
    :cond_c8
    :goto_c8
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_f9

    .line 1893
    :try_start_cc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPossibleMissNotify: onCallForwardingIndicatorChanged phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cfi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1896
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, p2

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_f9} :catch_181

    .line 1903
    :cond_f9
    :goto_f9
    const/16 v4, 0x10

    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 1907
    :try_start_101
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_10f} :catch_18b

    .line 1913
    :cond_10f
    :goto_10f
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_14e

    .line 1916
    :try_start_113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPossibleMissNotify: onDataConnectionStateChanged(mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDataConnectionNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1921
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, p2

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v6, v6, p2

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_14e} :catch_195

    .line 1927
    :cond_14e
    :goto_14e
    return-void

    .line 1833
    :catch_14f
    move-exception v1

    .line 1834
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    .line 1845
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_159
    move-exception v1

    .line 1846
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    .line 1860
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_163
    move-exception v1

    .line 1861
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_82

    .line 1872
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_16d
    move-exception v1

    .line 1873
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    .line 1885
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_177
    move-exception v1

    .line 1886
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c8

    .line 1898
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_181
    move-exception v1

    .line 1899
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f9

    .line 1908
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_18b
    move-exception v1

    .line 1909
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10f

    .line 1923
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_195
    move-exception v1

    .line 1924
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14e
.end method

.method private handleRemoveListLocked()V
    .registers 6

    .prologue
    .line 1648
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1649
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRemoveListLocked: mRemoveList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1650
    if-lez v2, :cond_39

    .line 1651
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1652
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_24

    .line 1654
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_34
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1656
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_39
    return-void
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .registers 21
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subId"    # I

    .prologue
    .line 496
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 497
    .local v3, "callerUid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 499
    .local v7, "myUid":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listen: E pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " events=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " notifyNow="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " subId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " myUid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callerUid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 504
    if-eqz p3, :cond_26a

    .line 506
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 507
    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    .line 509
    const/4 v9, 0x0

    .line 511
    .local v9, "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_65
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 512
    .local v2, "b":Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_1f1

    move-result v1

    .line 513
    .local v1, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    move-object v10, v9

    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_71
    if-ge v6, v1, :cond_1dd

    .line 514
    :try_start_73
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_278

    .line 515
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_7b
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_1d8

    .line 525
    :goto_7f
    move-object/from16 v0, p2

    iput-object v0, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 526
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 527
    iput v3, v9, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 530
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v11

    if-nez v11, :cond_1f4

    .line 531
    const v11, 0x7fffffff

    iput v11, v9, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 535
    :goto_94
    iget v11, v9, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    iput v11, v9, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 537
    iget v8, v9, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 538
    .local v8, "phoneId":I
    move/from16 v0, p3

    iput v0, v9, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 540
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "listen:  Register r="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " r.subId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v9, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " phoneId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 542
    const-string v11, "listen"

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->toStringLogSSC(Ljava/lang/String;)V

    .line 543
    if-eqz p4, :cond_1d6

    invoke-direct {p0, v8}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z
    :try_end_d8
    .catchall {:try_start_7b .. :try_end_d8} :catchall_1f1

    move-result v11

    if-eqz v11, :cond_1d6

    .line 544
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_107

    .line 546
    :try_start_df
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "listen: call onSSC state="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v13, v13, v8

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 547
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/telephony/ServiceState;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, v8

    invoke-direct {v13, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_107} :catch_1fa
    .catchall {:try_start_df .. :try_end_107} :catchall_1f1

    .line 553
    :cond_107
    :goto_107
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_11d

    .line 555
    :try_start_10b
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .line 557
    .local v5, "gsmSignalStrength":I
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v5, v13, :cond_11a

    const/4 v5, -0x1

    .end local v5    # "gsmSignalStrength":I
    :cond_11a
    invoke-interface {v11, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_11d} :catch_202
    .catchall {:try_start_10b .. :try_end_11d} :catchall_1f1

    .line 563
    :cond_11d
    :goto_11d
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_12a

    .line 565
    :try_start_121
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v13, v13, v8

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_12a
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_12a} :catch_20a
    .catchall {:try_start_121 .. :try_end_12a} :catchall_1f1

    .line 571
    :cond_12a
    :goto_12a
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_137

    .line 573
    :try_start_12e
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v13, v13, v8

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_137} :catch_212
    .catchall {:try_start_12e .. :try_end_137} :catchall_1f1

    .line 579
    :cond_137
    :goto_137
    const/16 v11, 0x10

    :try_start_139
    invoke-direct {p0, v9, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_1f1

    move-result v11

    if-eqz v11, :cond_14d

    .line 583
    :try_start_13f
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/os/Bundle;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v14, v14, v8

    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_14d} :catch_21a
    .catchall {:try_start_13f .. :try_end_14d} :catchall_1f1

    .line 589
    :cond_14d
    :goto_14d
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_15e

    .line 591
    :try_start_151
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v13, v13, v8

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_15e} :catch_222
    .catchall {:try_start_151 .. :try_end_15e} :catchall_1f1

    .line 597
    :cond_15e
    :goto_15e
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_16f

    .line 599
    :try_start_162
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v13, v13, v8

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v14, v14, v8

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_16f
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_16f} :catch_22a
    .catchall {:try_start_162 .. :try_end_16f} :catchall_1f1

    .line 605
    :cond_16f
    :goto_16f
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_17e

    .line 607
    :try_start_175
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v13, v13, v8

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_17e
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_17e} :catch_232
    .catchall {:try_start_175 .. :try_end_17e} :catchall_1f1

    .line 612
    :cond_17e
    :goto_17e
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_18d

    .line 614
    :try_start_184
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v13, v13, v8

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_18d
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_18d} :catch_23a
    .catchall {:try_start_184 .. :try_end_18d} :catchall_1f1

    .line 619
    :cond_18d
    :goto_18d
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_19a

    .line 621
    :try_start_193
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_19a
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_19a} :catch_242
    .catchall {:try_start_193 .. :try_end_19a} :catchall_1f1

    .line 626
    :cond_19a
    :goto_19a
    const/16 v11, 0x400

    :try_start_19c
    invoke-direct {p0, v9, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1f1

    move-result v11

    if-eqz v11, :cond_1af

    .line 630
    :try_start_1a2
    iget-object v13, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v13, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1af
    .catch Landroid/os/RemoteException; {:try_start_1a2 .. :try_end_1af} :catch_24a
    .catchall {:try_start_1a2 .. :try_end_1af} :catchall_1f1

    .line 635
    :cond_1af
    :goto_1af
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x2000

    if-eqz v11, :cond_1bc

    .line 637
    :try_start_1b5
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_1bc
    .catch Landroid/os/RemoteException; {:try_start_1b5 .. :try_end_1bc} :catch_252
    .catchall {:try_start_1b5 .. :try_end_1bc} :catchall_1f1

    .line 642
    :cond_1bc
    :goto_1bc
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_1c9

    .line 644
    :try_start_1c2
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1c9
    .catch Landroid/os/RemoteException; {:try_start_1c2 .. :try_end_1c9} :catch_25a
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_1f1

    .line 649
    :cond_1c9
    :goto_1c9
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x1000

    if-eqz v11, :cond_1d6

    .line 651
    :try_start_1cf
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1cf .. :try_end_1d6} :catch_262
    .catchall {:try_start_1cf .. :try_end_1d6} :catchall_1f1

    .line 658
    :cond_1d6
    :goto_1d6
    :try_start_1d6
    monitor-exit v12
    :try_end_1d7
    .catchall {:try_start_1d6 .. :try_end_1d7} :catchall_1f1

    .line 663
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v6    # "i":I
    .end local v8    # "phoneId":I
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_1d7
    return-void

    .line 513
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1d8
    add-int/lit8 v6, v6, 0x1

    move-object v10, v9

    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_71

    .line 519
    :cond_1dd
    :try_start_1dd
    new-instance v9, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_1e3
    .catchall {:try_start_1dd .. :try_end_1e3} :catchall_278

    .line 520
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_1e3
    iput-object v2, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 521
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    const-string v11, "listen: add new record"

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 658
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_1f1
    move-exception v11

    :goto_1f2
    monitor-exit v12
    :try_end_1f3
    .catchall {:try_start_1e3 .. :try_end_1f3} :catchall_1f1

    throw v11

    .line 533
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v6    # "i":I
    :cond_1f4
    :try_start_1f4
    move/from16 v0, p5

    iput v0, v9, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto/16 :goto_94

    .line 549
    .restart local v8    # "phoneId":I
    :catch_1fa
    move-exception v4

    .line 550
    .local v4, "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_107

    .line 559
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_202
    move-exception v4

    .line 560
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_11d

    .line 567
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_20a
    move-exception v4

    .line 568
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_12a

    .line 575
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_212
    move-exception v4

    .line 576
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_137

    .line 585
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_21a
    move-exception v4

    .line 586
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_14d

    .line 593
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_222
    move-exception v4

    .line 594
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_15e

    .line 601
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_22a
    move-exception v4

    .line 602
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_16f

    .line 608
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_232
    move-exception v4

    .line 609
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_17e

    .line 615
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_23a
    move-exception v4

    .line 616
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_18d

    .line 622
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_242
    move-exception v4

    .line 623
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_19a

    .line 631
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_24a
    move-exception v4

    .line 632
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1af

    .line 638
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_252
    move-exception v4

    .line 639
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1bc

    .line 645
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_25a
    move-exception v4

    .line 646
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1c9

    .line 653
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_262
    move-exception v4

    .line 654
    .restart local v4    # "ex":Landroid/os/RemoteException;
    iget-object v11, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_268
    .catchall {:try_start_1f4 .. :try_end_268} :catchall_1f1

    goto/16 :goto_1d6

    .line 660
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "ex":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "phoneId":I
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_26a
    const-string v11, "listen: Unregister"

    invoke-static {v11}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 661
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1d7

    .line 658
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_278
    move-exception v11

    move-object v9, v10

    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_1f2
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1724
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    return-void
.end method

.method private logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I
    .param p4, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v0, v0

    if-nez v0, :cond_a

    .line 1761
    :cond_9
    :goto_9
    return-void

    .line 1752
    :cond_a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v0, v0, v2

    if-nez v0, :cond_1e

    .line 1753
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    new-instance v3, Lcom/android/server/TelephonyRegistry$LogSSC;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    aput-object v3, v0, v2

    .line 1755
    :cond_1e
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1756
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1757
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v0, v0, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry$LogSSC;->set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 1758
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    if-lt v0, v2, :cond_9

    .line 1759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    goto :goto_9
.end method

.method private onUpdatePhoneSubIdMapping()V
    .registers 5

    .prologue
    .line 1684
    const-string v1, "onUpdatePhoneSubIdMapping E"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1685
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    monitor-enter v2

    .line 1686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    :try_start_9
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v0, v1, :cond_3c

    .line 1687
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    aput v3, v1, v0

    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update phone id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is mapping to sub id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1686
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1690
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_43

    .line 1691
    const-string v1, "onUpdatePhoneSubIdMapping X"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1692
    return-void

    .line 1690
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 666
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 667
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 668
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_58

    .line 669
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v3, p1, :cond_55

    .line 671
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 672
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove: binder="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "r.pkgForDebug"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "r.callback"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 676
    monitor-exit v4

    .line 680
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_54
    return-void

    .line 668
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 679
    :cond_58
    monitor-exit v4

    goto :goto_54

    .end local v0    # "i":I
    .end local v2    # "recordCount":I
    :catchall_5a
    move-exception v3

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method private toStringLogSSC(Ljava/lang/String;)V
    .registers 5
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 1764
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2c

    .line 1765
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": logSSC is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1782
    :goto_2b
    return-void

    .line 1768
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": logSSC.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1769
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    .line 1770
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    if-nez v1, :cond_5e

    .line 1772
    const/4 v0, 0x0

    .line 1775
    :cond_5e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$LogSSC;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1776
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-lt v0, v1, :cond_71

    .line 1777
    const/4 v0, 0x0

    .line 1779
    :cond_71
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    if-ne v0, v1, :cond_5e

    .line 1780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ----------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 1660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1661
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 1663
    .local v3, "valid":Z
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1664
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_5a

    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    const/4 v3, 0x1

    .line 1666
    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateEventsAndUserLocked: valid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " r.callerUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " foregroundUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " r.events="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " events="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_5c

    .line 1671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1673
    return v3

    .line 1664
    :cond_5a
    const/4 v3, 0x0

    goto :goto_14

    .line 1671
    .end local v2    # "foregroundUser":I
    :catchall_5c
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private validatePhoneId(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1677
    if-ltz p1, :cond_1e

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v1, :cond_1e

    const/4 v0, 0x1

    .line 1678
    .local v0, "valid":Z
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validatePhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1679
    return v0

    .line 1677
    .end local v0    # "valid":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 14
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 390
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 391
    .local v2, "callerUid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 393
    .local v5, "myUid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listen oscl: E pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " myUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callerUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callback="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callback.asBinder="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkOnSubscriptionsChangedListenerPermission()V

    .line 400
    const/4 v6, 0x0

    .line 402
    .local v6, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 405
    :try_start_51
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 406
    .local v1, "b":Landroid/os/IBinder;
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_d8

    move-result v0

    .line 407
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_5d
    if-ge v4, v0, :cond_c5

    .line 408
    :try_start_5f
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_108

    .line 409
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_67
    iget-object v8, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v8, :cond_c1

    .line 419
    :goto_6b
    iput-object p2, v6, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 420
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 421
    iput v2, v6, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 422
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listen oscl:  Register r="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 427
    iget-boolean v8, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_d8

    if-eqz v8, :cond_102

    .line 429
    :try_start_8e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listen oscl: send to r="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 430
    iget-object v8, v6, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v8}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listen oscl: sent to r="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_bf} :catch_db
    .catchall {:try_start_8e .. :try_end_bf} :catchall_d8

    .line 439
    :goto_bf
    :try_start_bf
    monitor-exit v9
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_d8

    .line 440
    return-void

    .line 407
    :cond_c1
    add-int/lit8 v4, v4, 0x1

    move-object v7, v6

    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_5d

    .line 413
    :cond_c5
    :try_start_c5
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_cb
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_108

    .line 414
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :try_start_cb
    iput-object v1, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 415
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v8, "listen oscl: add new record"

    invoke-static {v8}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_6b

    .line 439
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    :catchall_d8
    move-exception v8

    :goto_d9
    monitor-exit v9
    :try_end_da
    .catchall {:try_start_cb .. :try_end_da} :catchall_d8

    throw v8

    .line 432
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    :catch_db
    move-exception v3

    .line 433
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_dc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listen oscl: remote exception sending to r="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " e="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 434
    iget-object v8, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v8}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_bf

    .line 437
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_102
    const-string v8, "listen oscl: hasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v8}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_dc .. :try_end_107} :catchall_d8

    goto :goto_bf

    .line 439
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_108
    move-exception v8

    move-object v6, v7

    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_d9
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1383
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_33

    .line 1385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    :goto_32
    return-void

    .line 1389
    :cond_33
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1390
    :try_start_36
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1391
    .local v3, "recordCount":I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_42
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1ee

    .line 1393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Phone Id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallIncomingNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mServiceState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSignalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mMessageWaiting="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallForwarding="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionPossible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionApn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkProperties="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionNetworkCapabilities="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellLocation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_42

    .line 1411
    :cond_1ee
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDcRtInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registrations: count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_222
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_248

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1414
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_222

    .line 1416
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "recordCount":I
    :catchall_245
    move-exception v4

    monitor-exit v5
    :try_end_247
    .catchall {:try_start_36 .. :try_end_247} :catchall_245

    throw v4

    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "recordCount":I
    :cond_248
    :try_start_248
    monitor-exit v5
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_245

    goto/16 :goto_32
.end method

.method public getPhoneSubIdMapping(I)I
    .registers 7
    .param p1, "subId"    # I

    .prologue
    .line 1696
    const/4 v1, 0x0

    .line 1697
    .local v1, "tmpPhoneId":I
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    monitor-enter v3

    .line 1698
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    :try_start_5
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v0, v2, :cond_34

    .line 1699
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_31

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " finds phone id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1701
    monitor-exit v3

    .line 1720
    .end local v0    # "i":I
    :goto_30
    return v0

    .line 1698
    .restart local v0    # "i":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1706
    :cond_34
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1708
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1709
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v1

    .line 1710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneSubIdMapping mapping phone ID for IRAT, tmpPhoneId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1712
    :cond_58
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v1, v2, :cond_84

    .line 1713
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aput p1, v2, v1

    .line 1714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find in map, update phone id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is mapping to sub id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubIdMapping:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1718
    :cond_84
    monitor-exit v3

    move v0, v1

    .line 1720
    goto :goto_30

    .line 1718
    :catchall_87
    move-exception v2

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_5 .. :try_end_89} :catchall_87

    throw v2
.end method

.method idMatch(II)Z
    .registers 7
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1798
    const/4 v0, 0x0

    .line 1799
    .local v0, "rlt":Z
    if-gez p2, :cond_2e

    .line 1801
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    if-ne v2, v3, :cond_16

    const/16 v2, -0xa

    if-eq p2, v2, :cond_16

    const/16 v2, -0xb

    if-eq p2, v2, :cond_16

    .line 1805
    const/4 v0, 0x1

    .line 1807
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idMatch: rlt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    move v1, v0

    .line 1821
    .end local v0    # "rlt":Z
    .local v1, "rlt":Z
    :goto_2d
    return v1

    .line 1810
    .end local v1    # "rlt":Z
    .restart local v0    # "rlt":Z
    :cond_2e
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_50

    .line 1811
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_38

    .line 1812
    const/4 v0, 0x1

    .line 1819
    :cond_38
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idMatch: rlt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    move v1, v0

    .line 1821
    .end local v0    # "rlt":Z
    .restart local v1    # "rlt":Z
    goto :goto_2d

    .line 1815
    .end local v1    # "rlt":Z
    .restart local v0    # "rlt":Z
    :cond_50
    if-ne p1, p2, :cond_38

    .line 1816
    const/4 v0, 0x1

    goto :goto_38
.end method

.method idMatch(III)Z
    .registers 7
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1786
    if-gez p2, :cond_b

    .line 1788
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p3, :cond_9

    .line 1793
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    .line 1788
    goto :goto_8

    .line 1790
    :cond_b
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_16

    .line 1791
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-eq p2, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 1793
    :cond_16
    if-eq p1, p2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 11
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    .line 484
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 486
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 12
    .param p1, "subId"    # I
    .param p2, "pkgForDebug"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 492
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 3
    .param p1, "cfi"    # Z

    .prologue
    .line 965
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 966
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    .prologue
    .line 969
    const-string v4, "notifyCallForwardingChanged()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 994
    :goto_8
    return-void

    .line 973
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChangedForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cfi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 976
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 977
    :try_start_2c
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 978
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 979
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v4, v2

    .line 980
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 981
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_40

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_6b

    move-result v4

    if-eqz v4, :cond_40

    .line 985
    :try_start_5c
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_6b

    goto :goto_40

    .line 986
    :catch_62
    move-exception v0

    .line 987
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_63
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 993
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_6b
    move-exception v4

    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6b

    throw v4

    .line 992
    .restart local v2    # "phoneId":I
    :cond_6e
    :try_start_6e
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 993
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_6b

    goto :goto_8
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 683
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 706
    :goto_b
    return-void

    .line 688
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCallState: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " incomingNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 691
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 692
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 693
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_35

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_5c

    if-ne v3, v6, :cond_35

    .line 696
    :try_start_4d
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_53
    .catchall {:try_start_4d .. :try_end_52} :catchall_5c

    goto :goto_35

    .line 697
    :catch_53
    move-exception v0

    .line 698
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_54
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 703
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_5c
    move-exception v3

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    throw v3

    .line 702
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5f
    :try_start_5f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 703
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_5c

    .line 704
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_b
.end method

.method public notifyCallStateForPhoneInfo(IIIILjava/lang/String;)V
    .registers 15
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "subId"    # I
    .param p4, "state"    # I
    .param p5, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 713
    const-string v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 739
    :goto_8
    return-void

    .line 717
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallStateForPhoneInfo: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " incomingNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 721
    :try_start_4a
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 722
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p4, v0, p1

    .line 723
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p5, v0, p1

    .line 724
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5e
    :goto_5e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;

    .line 725
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget v0, v8, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v0, p3, :cond_5e

    iget v0, v8, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_78
    .catchall {:try_start_4a .. :try_end_78} :catchall_8c

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_5e

    .line 729
    :try_start_7d
    iget-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_82} :catch_83
    .catchall {:try_start_7d .. :try_end_82} :catchall_8c

    goto :goto_5e

    .line 730
    :catch_83
    move-exception v6

    .line 731
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_84
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 737
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_8c

    throw v0

    .line 736
    :cond_8f
    :try_start_8f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 737
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_8c

    move-object v0, p0

    move v1, p4

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    .line 738
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChangedForPhoneInfo(ILjava/lang/String;III)V

    goto/16 :goto_8
.end method

.method public notifyCallStateForSubscriber(IILjava/lang/String;)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 743
    const-string v4, "notifyCallState()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 770
    :goto_8
    return-void

    .line 747
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallStateForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " incomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 750
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 751
    :try_start_36
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 752
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 753
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p2, v4, v2

    .line 754
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p3, v4, v2

    .line 755
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 756
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v4, p1, :cond_4e

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_68
    .catchall {:try_start_36 .. :try_end_68} :catchall_7c

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_4e

    .line 760
    :try_start_6d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_72} :catch_73
    .catchall {:try_start_6d .. :try_end_72} :catchall_7c

    goto :goto_4e

    .line 761
    :catch_73
    move-exception v0

    .line 762
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_74
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 768
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_7c
    move-exception v4

    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_7c

    throw v4

    .line 767
    .restart local v2    # "phoneId":I
    :cond_7f
    :try_start_7f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 768
    monitor-exit v5
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_7c

    .line 769
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_8
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 878
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 10
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 881
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v4, "notifyCellInfo()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 909
    :goto_8
    return-void

    .line 885
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCellInfoForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 889
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 890
    :try_start_2c
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 891
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 892
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 893
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 894
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_41

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_6c

    move-result v4

    if-eqz v4, :cond_41

    .line 900
    :try_start_5d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_6c

    goto :goto_41

    .line 901
    :catch_63
    move-exception v0

    .line 902
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_64
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 908
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_6c
    move-exception v4

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_6c

    throw v4

    .line 907
    .restart local v2    # "phoneId":I
    :cond_6f
    :try_start_6f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 908
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_6c

    goto :goto_8
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1209
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1210
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1215
    const-string v4, "notifyCellLocation()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 1239
    :goto_28
    return-void

    .line 1218
    :cond_29
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1219
    :try_start_2c
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1220
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1221
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v4, v2

    .line 1222
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1223
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_40

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_70

    move-result v4

    if-eqz v4, :cond_40

    .line 1230
    :try_start_5c
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_66} :catch_67
    .catchall {:try_start_5c .. :try_end_66} :catchall_70

    goto :goto_40

    .line 1231
    :catch_67
    move-exception v0

    .line 1232
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_68
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 1238
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_70
    move-exception v4

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_70

    throw v4

    .line 1237
    .restart local v2    # "phoneId":I
    :cond_73
    :try_start_73
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1238
    monitor-exit v5
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_70

    goto :goto_28
.end method

.method public notifyDataActivity(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 997
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 998
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .prologue
    .line 1001
    const-string v4, "notifyDataActivity()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1020
    :goto_8
    return-void

    .line 1004
    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1005
    :try_start_c
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1006
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1007
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v4, v2

    .line 1008
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1009
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_43

    move-result v4

    if-eqz v4, :cond_20

    .line 1011
    :try_start_34
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3a
    .catchall {:try_start_34 .. :try_end_39} :catchall_43

    goto :goto_20

    .line 1012
    :catch_3a
    move-exception v0

    .line 1013
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1019
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_43

    throw v4

    .line 1018
    .restart local v2    # "phoneId":I
    :cond_46
    :try_start_46
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1019
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_43

    goto :goto_8
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 21
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .prologue
    .line 1025
    const v1, 0x7fffffff

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 1028
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1168
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "subId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1174
    const-string v4, "notifyDataConnectionFailed()"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1206
    :goto_a
    return-void

    .line 1178
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionFailedForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1181
    const/4 v14, -0x1

    .line 1182
    .local v14, "phoneId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1183
    :try_start_43
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->getPhoneSubIdMapping(I)I

    move-result v14

    .line 1184
    new-instance v4, Landroid/telephony/PreciseDataConnectionState;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v10, 0x0

    const-string v11, ""

    move-object/from16 v7, p3

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v11}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_63
    :goto_63
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/TelephonyRegistry$Record;

    .line 1188
    .local v15, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x1000

    invoke-virtual {v15, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_63

    iget v4, v15, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v14}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_80
    .catchall {:try_start_43 .. :try_end_80} :catchall_98

    move-result v4

    if-eqz v4, :cond_63

    .line 1192
    :try_start_83
    iget-object v4, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8c} :catch_8d
    .catchall {:try_start_83 .. :try_end_8c} :catchall_98

    goto :goto_63

    .line 1193
    :catch_8d
    move-exception v12

    .line 1194
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 1199
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_98
    move-exception v4

    monitor-exit v16
    :try_end_9a
    .catchall {:try_start_8e .. :try_end_9a} :catchall_98

    throw v4

    .line 1198
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_9b
    :try_start_9b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1199
    monitor-exit v16
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_98

    .line 1200
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 1201
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result p1

    .line 1203
    :cond_a9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1204
    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v10, 0x0

    const-string v11, ""

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 30
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "isDataConnectivityPossible"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "apnType"    # Ljava/lang/String;
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"    # I
    .param p10, "roaming"    # Z

    .prologue
    .line 1033
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1165
    :goto_a
    return-void

    .line 1037
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnectionForSubscriber E: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataConnectivityPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apn=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRecords.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1044
    const/4 v13, 0x0

    .line 1045
    .local v13, "bIsIMSChanged":Z
    const/4 v12, -0x1

    .line 1046
    .local v12, "phoneId":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1047
    :try_start_84
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->getPhoneSubIdMapping(I)I

    move-result v12

    .line 1048
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2a1

    .line 1049
    const/16 v16, 0x0

    .line 1053
    .local v16, "modified":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mImsDataConnState:[Ljava/util/HashMap;

    aget-object v2, v2, v12

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 1054
    .local v17, "nImsConnState":Ljava/lang/Integer;
    if-eqz v17, :cond_ba

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, p2

    if-eq v2, v0, :cond_ba

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mImsDataConnState:[Ljava/util/HashMap;

    aget-object v2, v2, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const/4 v13, 0x1

    .line 1059
    :cond_ba
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectedApns["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1063
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1fa

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v12

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v12

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, v12

    move/from16 v0, p2

    if-eq v2, v0, :cond_110

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v2, v12

    .line 1068
    const/16 v16, 0x1

    .line 1082
    :cond_110
    :goto_110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aput-boolean p3, v2, v12

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    aput-object p4, v2, v12

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aput-object p7, v2, v12

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aput-object p8, v2, v12

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v2, v2, v12

    move/from16 v0, p9

    if-eq v2, v0, :cond_13a

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput p9, v2, v12

    .line 1089
    const/16 v16, 0x1

    .line 1093
    :cond_13a
    const-string v2, "notifyDataConnectionForSubscriber: handle onDataConnectionStateChanged"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1095
    if-eqz v16, :cond_221

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_17b
    :goto_17b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/TelephonyRegistry$Record;

    .line 1101
    .local v18, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x40

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v2

    if-eqz v2, :cond_17b

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v12}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_19c
    .catchall {:try_start_84 .. :try_end_19c} :catchall_1f7

    move-result v2

    if-eqz v2, :cond_17b

    .line 1105
    :try_start_19f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify data connection state changed on sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged E: PKG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1111
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v4, v4, v12

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1114
    const-string v2, "onDataConnectionStateChanged X"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_1e9
    .catch Landroid/os/RemoteException; {:try_start_19f .. :try_end_1e9} :catch_1ea
    .catchall {:try_start_19f .. :try_end_1e9} :catchall_1f7

    goto :goto_17b

    .line 1116
    :catch_1ea
    move-exception v14

    .line 1117
    .local v14, "ex":Landroid/os/RemoteException;
    :try_start_1eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17b

    .line 1150
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "modified":Z
    .end local v17    # "nImsConnState":Ljava/lang/Integer;
    .end local v18    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1f7
    move-exception v2

    monitor-exit v10
    :try_end_1f9
    .catchall {:try_start_1eb .. :try_end_1f9} :catchall_1f7

    throw v2

    .line 1072
    .restart local v16    # "modified":Z
    .restart local v17    # "nImsConnState":Ljava/lang/Integer;
    :cond_1fa
    :try_start_1fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v12

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v2, v12

    .line 1075
    const/16 v16, 0x1

    goto/16 :goto_110

    .line 1121
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_21e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1126
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_221
    const-string v2, "notifyDataConnectionForSubscriber: handle PreciseDataConnectionState"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1128
    new-instance v2, Landroid/telephony/PreciseDataConnectionState;

    const-string v9, ""

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_245
    :goto_245
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/TelephonyRegistry$Record;

    .line 1132
    .restart local v18    # "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v2

    if-eqz v2, :cond_245

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v12}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_266
    .catchall {:try_start_1fa .. :try_end_266} :catchall_1f7

    move-result v2

    if-eqz v2, :cond_245

    .line 1137
    :try_start_269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreciseDataConnectionStateChanged E: PKG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1139
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    .line 1141
    const-string v2, "onDataConnectionStateChanged X"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_293
    .catch Landroid/os/RemoteException; {:try_start_269 .. :try_end_293} :catch_294
    .catchall {:try_start_269 .. :try_end_293} :catchall_1f7

    goto :goto_245

    .line 1143
    :catch_294
    move-exception v14

    .line 1144
    .restart local v14    # "ex":Landroid/os/RemoteException;
    :try_start_295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_245

    .line 1149
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "modified":Z
    .end local v17    # "nImsConnState":Ljava/lang/Integer;
    .end local v18    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2a1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1150
    monitor-exit v10
    :try_end_2a5
    .catchall {:try_start_295 .. :try_end_2a5} :catchall_1f7

    .line 1154
    const-string v2, "notifyDataConnectionForSubscriber: broadcast intent"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p1

    .line 1157
    invoke-direct/range {v2 .. v13}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZIIZ)V

    .line 1160
    const-string v9, ""

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1163
    const-string v2, "notifyDataConnectionForSubscriber X"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 8
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 912
    const-string v3, "notifyDataConnectionRealTimeInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 934
    :goto_8
    return-void

    .line 916
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 917
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    .line 918
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 919
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x2000

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_39

    move-result v3

    if-eqz v3, :cond_14

    .line 926
    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30
    .catchall {:try_start_28 .. :try_end_2f} :catchall_39

    goto :goto_14

    .line 927
    :catch_30
    move-exception v0

    .line 928
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_31
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 933
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v3

    .line 932
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 933
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_39

    goto :goto_8
.end method

.method public notifyDisconnectCause(II)V
    .registers 13
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .prologue
    .line 1290
    const-string v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1309
    :goto_8
    return-void

    .line 1293
    :cond_9
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1294
    :try_start_c
    new-instance v0, Landroid/telephony/PreciseCallState;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1296
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;

    .line 1297
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v8, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_46

    move-result v0

    if-eqz v0, :cond_21

    .line 1299
    :try_start_35
    iget-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d
    .catchall {:try_start_35 .. :try_end_3c} :catchall_46

    goto :goto_21

    .line 1300
    :catch_3d
    move-exception v6

    .line 1301
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1306
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_46
    move-exception v0

    monitor-exit v9
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    throw v0

    .line 1305
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1306
    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    .line 1307
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    goto :goto_8
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    .prologue
    .line 938
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 962
    :goto_8
    return-void

    .line 942
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMessageWaitingChangedForSubscriberPhoneID: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mwi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 945
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 946
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 947
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v3, p1

    .line 948
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 949
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_66

    move-result v3

    if-eqz v3, :cond_3c

    .line 953
    :try_start_57
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d
    .catchall {:try_start_57 .. :try_end_5c} :catchall_66

    goto :goto_3c

    .line 954
    :catch_5d
    move-exception v0

    .line 955
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_5e
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 961
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_66
    move-exception v3

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_66

    throw v3

    .line 960
    :cond_69
    :try_start_69
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 961
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_66

    goto :goto_8
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .prologue
    .line 1357
    const-string v3, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1379
    :goto_8
    return-void

    .line 1361
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1362
    :try_start_c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1364
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyOemHookRawEventForSubscriber:  r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1366
    const v3, 0x8000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-eq v3, p1, :cond_52

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_4d
    .catchall {:try_start_c .. :try_end_4d} :catchall_61

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_12

    .line 1371
    :cond_52
    :try_start_52
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_58
    .catchall {:try_start_52 .. :try_end_57} :catchall_61

    goto :goto_12

    .line 1372
    :catch_58
    move-exception v0

    .line 1373
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_59
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1378
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_61
    move-exception v3

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_61

    throw v3

    .line 1377
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_64
    :try_start_64
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1378
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_61

    goto :goto_8
.end method

.method public notifyOtaspChanged(I)V
    .registers 8
    .param p1, "otaspMode"    # I

    .prologue
    .line 1242
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1258
    :goto_8
    return-void

    .line 1245
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1246
    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1247
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1248
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_37

    move-result v3

    if-eqz v3, :cond_14

    .line 1250
    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_37

    goto :goto_14

    .line 1251
    :catch_2e
    move-exception v0

    .line 1252
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1257
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v3

    .line 1256
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1257
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_37

    goto :goto_8
.end method

.method public notifyPreciseCallState(III)V
    .registers 15
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I

    .prologue
    const/4 v10, -0x1

    .line 1262
    const-string v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1287
    :goto_9
    return-void

    .line 1265
    :cond_a
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1266
    :try_start_d
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 1267
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1268
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 1269
    new-instance v0, Landroid/telephony/PreciseCallState;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1273
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;

    .line 1274
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v8, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_4a

    move-result v0

    if-eqz v0, :cond_25

    .line 1276
    :try_start_39
    iget-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41
    .catchall {:try_start_39 .. :try_end_40} :catchall_4a

    goto :goto_25

    .line 1277
    :catch_41
    move-exception v6

    .line 1278
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_42
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 1283
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4a
    move-exception v0

    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v0

    .line 1282
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4d
    :try_start_4d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1283
    monitor-exit v9
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4a

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v10

    move v5, v10

    .line 1284
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    goto :goto_9
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1313
    const-string v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1334
    :goto_8
    return-void

    .line 1316
    :cond_9
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1317
    :try_start_c
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1320
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    .line 1321
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v10, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_46

    move-result v0

    if-eqz v0, :cond_21

    .line 1324
    :try_start_35
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d
    .catchall {:try_start_35 .. :try_end_3c} :catchall_46

    goto :goto_21

    .line 1325
    :catch_3d
    move-exception v8

    .line 1326
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1331
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_46
    move-exception v0

    monitor-exit v11
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    throw v0

    .line 1330
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1331
    monitor-exit v11
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    .line 1332
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 773
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 812
    :goto_8
    return-void

    .line 777
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 779
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 782
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 783
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v3, p1

    .line 784
    const-string v3, "notifyServiceStateForSubscriber"

    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/TelephonyRegistry;->logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 785
    const-string v3, "notifyServiceStateForSubscriber"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->toStringLogSSC(Ljava/lang/String;)V

    .line 787
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_102

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 789
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceStateForSubscriber: r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 792
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_50

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_9c
    .catchall {:try_start_c .. :try_end_9c} :catchall_e9

    move-result v3

    if-eqz v3, :cond_50

    .line 796
    :try_start_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceStateForSubscriber: callback.onSSC r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 800
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_dd} :catch_df
    .catchall {:try_start_9f .. :try_end_dd} :catchall_e9

    goto/16 :goto_50

    .line 801
    :catch_df
    move-exception v0

    .line 802
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_e0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_50

    .line 810
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_e9
    move-exception v3

    monitor-exit v4
    :try_end_eb
    .catchall {:try_start_e0 .. :try_end_eb} :catchall_e9

    throw v3

    .line 807
    :cond_ec
    :try_start_ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 809
    :cond_102
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 810
    monitor-exit v4
    :try_end_106
    .catchall {:try_start_ec .. :try_end_106} :catchall_e9

    .line 811
    invoke-direct {p0, p3, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto/16 :goto_8
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 815
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    .line 817
    return-void
.end method

.method public notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    .registers 12
    .param p1, "subId"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 820
    const-string v6, "notifySignalStrength()"

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 874
    :goto_8
    return-void

    .line 824
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifySignalStrengthForSubscriber: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " signalStrength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 826
    const-string v6, "notifySignalStrengthForSubscriber"

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->toStringLogSSC(Ljava/lang/String;)V

    .line 828
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 829
    :try_start_31
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 830
    .local v3, "phoneId":I
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifySignalStrengthForSubscriber: valid phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 832
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p2, v6, v3

    .line 833
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5b
    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_174

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 835
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifySignalStrengthForSubscriber: r="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " subId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ss="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 838
    const/16 v6, 0x100

    invoke-virtual {v4, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_e9

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_a8
    .catchall {:try_start_31 .. :try_end_a8} :catchall_150

    move-result v6

    if-eqz v6, :cond_e9

    .line 843
    :try_start_ab
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifySignalStrengthForSubscriber: callback.onSsS r="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " subId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ss="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 847
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v8, Landroid/telephony/SignalStrength;

    invoke-direct {v8, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_e9} :catch_153
    .catchall {:try_start_ab .. :try_end_e9} :catchall_150

    .line 852
    :cond_e9
    :goto_e9
    const/4 v6, 0x2

    :try_start_ea
    invoke-virtual {v4, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(II)Z
    :try_end_f5
    .catchall {:try_start_ea .. :try_end_f5} :catchall_150

    move-result v6

    if-eqz v6, :cond_5b

    .line 855
    :try_start_f8
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 856
    .local v1, "gsmSignalStrength":I
    const/16 v6, 0x63

    if-ne v1, v6, :cond_15c

    const/4 v5, -0x1

    .line 858
    .local v5, "ss":I
    :goto_101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifySignalStrengthForSubscriber: callback.onSS r="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " subId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " gsmSS="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ss="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 862
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_144} :catch_146
    .catchall {:try_start_f8 .. :try_end_144} :catchall_150

    goto/16 :goto_5b

    .line 863
    .end local v1    # "gsmSignalStrength":I
    .end local v5    # "ss":I
    :catch_146
    move-exception v0

    .line 864
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_147
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 872
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "phoneId":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_150
    move-exception v6

    monitor-exit v7
    :try_end_152
    .catchall {:try_start_147 .. :try_end_152} :catchall_150

    throw v6

    .line 848
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "phoneId":I
    .restart local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_153
    move-exception v0

    .line 849
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_154
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "gsmSignalStrength":I
    :cond_15c
    move v5, v1

    .line 856
    goto :goto_101

    .line 869
    .end local v1    # "gsmSignalStrength":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_15e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifySignalStrengthForSubscriber: invalid phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 871
    :cond_174
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 872
    monitor-exit v7
    :try_end_178
    .catchall {:try_start_154 .. :try_end_178} :catchall_150

    .line 873
    invoke-direct {p0, p2, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_8
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 7

    .prologue
    .line 457
    const-string v3, "notifySubscriptionInfoChanged:"

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 458
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 459
    :try_start_8
    iget-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v3, :cond_28

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 463
    :cond_28
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 464
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 465
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 466
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_99

    move-result v3

    if-eqz v3, :cond_36

    .line 468
    :try_start_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySubscriptionInfoChanged: call osc to r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 469
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySubscriptionInfoChanged: done osc to r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_79} :catch_7a
    .catchall {:try_start_48 .. :try_end_79} :catchall_99

    goto :goto_36

    .line 471
    :catch_7a
    move-exception v0

    .line 472
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySubscriptionInfoChanged: RemoteException r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 473
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 478
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_99
    move-exception v3

    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_7b .. :try_end_9b} :catchall_99

    throw v3

    .line 477
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_9c
    :try_start_9c
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 478
    monitor-exit v4
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_99

    .line 479
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .registers 9
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 1337
    const-string v3, "notifyVoLteServiceStateChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1354
    :goto_8
    return-void

    .line 1340
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1341
    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 1342
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1343
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_3e

    move-result v3

    if-eqz v3, :cond_14

    .line 1345
    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/VoLteServiceState;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-direct {v5, v6}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/telephony/VoLteServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_35
    .catchall {:try_start_28 .. :try_end_34} :catchall_3e

    goto :goto_14

    .line 1347
    :catch_35
    move-exception v0

    .line 1348
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_36
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1353
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3e

    throw v3

    .line 1352
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_41
    :try_start_41
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1353
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_3e

    goto :goto_8
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 445
    const-string v0, "listen oscl: Unregister"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 446
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 447
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .prologue
    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    return-void
.end method
