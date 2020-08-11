.class abstract Lcom/android/server/hdmi/HdmiCecLocalDevice;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    }
.end annotation


# static fields
.field private static final DEVICE_CLEANUP_TIMEOUT:I = 0x1388

.field private static final FOLLOWER_SAFETY_TIMEOUT:I = 0x226

.field private static final MSG_DISABLE_DEVICE_TIMEOUT:I = 0x1

.field private static final MSG_USER_CONTROL_RELEASE_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevice"


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveRoutingPath:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected mAddress:I

.field protected final mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

.field protected mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field protected final mDeviceType:I

.field private final mHandler:Landroid/os/Handler;

.field protected mLastKeyRepeatCount:I

.field protected mLastKeycode:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

.field protected mPreferredAddress:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "deviceType"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 113
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 122
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 155
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 156
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 157
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 3
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "deviceType"    # I

    .prologue
    .line 162
    sparse-switch p1, :sswitch_data_12

    .line 168
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 164
    :sswitch_5
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    goto :goto_4

    .line 166
    :sswitch_b
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    goto :goto_4

    .line 162
    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_5
        0x4 -> :sswitch_b
    .end sparse-switch
.end method

.method private dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 311
    const/4 v2, 0x0

    .line 313
    .local v2, "processed":Z
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 315
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v3

    .line 316
    .local v3, "result":Z
    if-nez v2, :cond_23

    if-eqz v3, :cond_25

    :cond_23
    const/4 v2, 0x1

    .line 317
    :goto_24
    goto :goto_f

    .line 316
    :cond_25
    const/4 v2, 0x0

    goto :goto_24

    .line 318
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .end local v3    # "result":Z
    :cond_27
    return v2
.end method

.method private handleDisableDeviceTimeout()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 859
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 860
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 861
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 862
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 863
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 865
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_1d
    return-void
.end method

.method static injectKeyEvent(JIII)V
    .registers 19
    .param p0, "time"    # J
    .param p2, "action"    # I
    .param p3, "keycode"    # I
    .param p4, "repeat"    # I

    .prologue
    .line 484
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const v11, 0x2000001

    const/4 v12, 0x0

    move-wide v0, p0

    move-wide v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 487
    .local v13, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 489
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    .line 490
    return-void
.end method

.method static isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 502
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x44

    if-ne v2, v3, :cond_20

    aget-byte v2, v0, v1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6c

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method static isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 494
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x44

    if-ne v2, v3, :cond_20

    aget-byte v2, v0, v1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method


# virtual methods
.method addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 5
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 638
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 640
    const-string v0, "HdmiCecLocalDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not ready to start action. Queued for deferred start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_28
    return-void

    .line 643
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    goto :goto_28
.end method

.method protected assertRunOnServiceThread()V
    .registers 3

    .prologue
    .line 731
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 732
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_14
    return-void
.end method

.method protected canGoToStandby()Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method protected checkIfPendingActionsCleared()V
    .registers 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v1, :cond_14

    .line 723
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 725
    .local v0, "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 726
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 728
    .end local v0    # "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    :cond_14
    return-void
.end method

.method clearAddress()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 632
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 633
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 7
    .param p1, "initiatedByCec"    # Z
    .param p2, "origialCallback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .prologue
    .line 842
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 849
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 851
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 221
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 222
    .local v0, "dest":I
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-eq v0, v1, :cond_11

    const/16 v1, 0xf

    if-eq v0, v1, :cond_11

    .line 223
    const/4 v1, 0x0

    .line 227
    :goto_10
    return v1

    .line 226
    :cond_11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    goto :goto_10
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreferredAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const-string v0, "mActiveRoutingPath: 0x%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method getActions(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 674
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 675
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 676
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 682
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_32
    return-object v1
.end method

.method getActivePath()I
    .registers 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    :try_start_3
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    monitor-exit v1

    return v0

    .line 780
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method getActivePortId()I
    .registers 4

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 797
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 3

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    monitor-exit v1

    return-object v0

    .line 758
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 814
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    return-object v0
.end method

.method getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 612
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method protected abstract getPreferredAddress()I
.end method

.method final getService()Lcom/android/server/hdmi/HdmiControlService;
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method final handleAddressAllocated(II)V
    .registers 3
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 600
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onAddressAllocated(II)V

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setPreferredAddress(I)V

    .line 603
    return-void
.end method

.method protected handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 345
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v1

    .line 346
    .local v1, "version":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 348
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 349
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 370
    const-string v0, "HdmiCecLocalDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only TV can handle <Get Menu Language>:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method protected handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method protected handleGiveDeviceVendorId()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 335
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v1

    .line 336
    .local v1, "vendorId":I
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 338
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 339
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 380
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 382
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_1c

    .line 383
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 387
    :goto_1a
    const/4 v1, 0x1

    return v1

    .line 385
    :cond_1c
    const-string v1, "HdmiCecLocalDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to build <Get Osd Name>:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method protected handleGivePhysicalAddress()Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 325
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 326
    .local v1, "physicalAddress":I
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 328
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 329
    const/4 v2, 0x1

    return v2
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method protected handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method protected handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 426
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 428
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 429
    const/4 v0, 0x1

    .line 431
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 12
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 436
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 437
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 439
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 466
    :goto_1f
    return v5

    .line 441
    :cond_20
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 442
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    goto :goto_1f

    .line 446
    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 447
    .local v0, "downTime":J
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    .line 448
    .local v4, "params":[B
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecKeycode;->cecKeycodeAndParamsToAndroidKey([B)I

    move-result v3

    .line 449
    .local v3, "keycode":I
    const/4 v2, 0x0

    .line 450
    .local v2, "keyRepeatCount":I
    iget v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    if-eq v7, v8, :cond_4d

    .line 451
    iget v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    if-ne v3, v7, :cond_64

    .line 452
    iget v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    add-int/lit8 v2, v7, 0x1

    .line 457
    :cond_4d
    :goto_4d
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 458
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 460
    if-eq v3, v8, :cond_6a

    .line 461
    invoke-static {v0, v1, v6, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 462
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    invoke-static {v7, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x226

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1f

    .line 454
    :cond_64
    iget v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    invoke-static {v0, v1, v5, v7, v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    goto :goto_4d

    :cond_6a
    move v5, v6

    .line 466
    goto :goto_1f
.end method

.method protected handleUserControlReleased()Z
    .registers 8
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 472
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 474
    iget v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    if-eq v4, v6, :cond_1e

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 476
    .local v0, "upTime":J
    iget v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 477
    iput v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 480
    .end local v0    # "upTime":J
    :goto_1d
    return v2

    :cond_1e
    move v2, v3

    goto :goto_1d
.end method

.method protected handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v6, 0x1

    .line 538
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 542
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v6}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 544
    :cond_1d
    return v6
.end method

.method protected handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x1

    .line 548
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    .line 549
    .local v4, "params":[B
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v6

    .line 550
    .local v6, "vendorId":I
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    if-ne v6, v0, :cond_2b

    .line 551
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 553
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 562
    :cond_2a
    :goto_2a
    return v5

    .line 555
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    if-eq v0, v1, :cond_45

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    if-eq v0, v1, :cond_45

    .line 557
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "Wrong direct vendor command. Replying with <Feature Abort>"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_2a

    .line 560
    :cond_45
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "Wrong broadcast vendor command. Ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method hasAction(Ljava/lang/Class;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 661
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 662
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 663
    const/4 v2, 0x1

    .line 666
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method init()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 176
    return-void
.end method

.method isAddressOf(I)Z
    .registers 3
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 625
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method final isConnectedToArcPort(I)Z
    .registers 3
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 752
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnectedToArcPort(I)Z

    move-result v0

    return v0
.end method

.method protected isInputReady(I)Z
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onAddressAllocated(II)V
.end method

.method onHotplug(IZ)V
    .registers 3
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 743
    return-void
.end method

.method protected final onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 234
    const/4 v0, 0x1

    .line 304
    :goto_a
    return v0

    .line 236
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    .line 304
    const/4 v0, 0x0

    goto :goto_a

    .line 238
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 240
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 242
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 244
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 246
    :sswitch_28
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGivePhysicalAddress()Z

    move-result v0

    goto :goto_a

    .line 248
    :sswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 250
    :sswitch_32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDeviceVendorId()Z

    move-result v0

    goto :goto_a

    .line 252
    :sswitch_37
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 254
    :sswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 256
    :sswitch_41
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 258
    :sswitch_46
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 260
    :sswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 262
    :sswitch_50
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 264
    :sswitch_55
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 266
    :sswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 268
    :sswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 270
    :sswitch_64
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 272
    :sswitch_69
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 274
    :sswitch_6e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 276
    :sswitch_73
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 278
    :sswitch_78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()Z

    move-result v0

    goto :goto_a

    .line 280
    :sswitch_7d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 282
    :sswitch_82
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 284
    :sswitch_87
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 286
    :sswitch_8d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 288
    :sswitch_93
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 290
    :sswitch_99
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 292
    :sswitch_9f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 294
    :sswitch_a5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 296
    :sswitch_ab
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 298
    :sswitch_b1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 300
    :sswitch_b7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 302
    :sswitch_bd
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 236
    nop

    :sswitch_data_c4
    .sparse-switch
        0x4 -> :sswitch_6e
        0xa -> :sswitch_bd
        0xd -> :sswitch_69
        0xf -> :sswitch_a5
        0x35 -> :sswitch_b7
        0x36 -> :sswitch_64
        0x43 -> :sswitch_ab
        0x44 -> :sswitch_73
        0x45 -> :sswitch_78
        0x46 -> :sswitch_2d
        0x47 -> :sswitch_9f
        0x72 -> :sswitch_55
        0x7a -> :sswitch_5f
        0x7e -> :sswitch_5a
        0x80 -> :sswitch_41
        0x81 -> :sswitch_46
        0x82 -> :sswitch_14
        0x83 -> :sswitch_28
        0x84 -> :sswitch_3c
        0x85 -> :sswitch_1e
        0x86 -> :sswitch_7d
        0x89 -> :sswitch_93
        0x8c -> :sswitch_32
        0x8d -> :sswitch_87
        0x8e -> :sswitch_8d
        0x8f -> :sswitch_82
        0x90 -> :sswitch_b1
        0x91 -> :sswitch_23
        0x9d -> :sswitch_19
        0x9f -> :sswitch_37
        0xa0 -> :sswitch_99
        0xc0 -> :sswitch_4b
        0xc5 -> :sswitch_50
    .end sparse-switch
.end method

.method protected onStandby(Z)V
    .registers 2
    .param p1, "initiatedByCec"    # Z

    .prologue
    .line 829
    return-void
.end method

.method pathToPortId(I)I
    .registers 3
    .param p1, "newPath"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 820
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 693
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 694
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 696
    return-void
.end method

.method removeAction(Ljava/lang/Class;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 703
    return-void
.end method

.method removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 6
    .param p2, "exception"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 710
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 711
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 713
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    if-eq v0, p2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 714
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 715
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 718
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 719
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z

    .prologue
    .line 874
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "sendKeyEvent not implemented"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method protected sendStandby(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 567
    return-void
.end method

.method sendUserControlPressedAndReleased(II)V
    .registers 5
    .param p1, "targetAddress"    # I
    .param p2, "cecKeycode"    # I

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 880
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 882
    return-void
.end method

.method setActivePath(I)V
    .registers 4
    .param p1, "path"    # I

    .prologue
    .line 784
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 785
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 786
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 787
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->pathToPortId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setActivePortId(I)V

    .line 788
    return-void

    .line 786
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method setActivePortId(I)V
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 809
    return-void
.end method

.method setActiveSource(II)V
    .registers 5
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 772
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 773
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 774
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 775
    return-void

    .line 773
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    .line 767
    return-void
.end method

.method setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .registers 4
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .prologue
    .line 762
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(II)V

    .line 763
    return-void
.end method

.method setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 618
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 619
    return-void
.end method

.method protected abstract setPreferredAddress(I)V
.end method

.method startQueuedActions()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 649
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 650
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->started()Z

    move-result v2

    if-nez v2, :cond_9

    .line 651
    const-string v2, "HdmiCecLocalDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting queued action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    goto :goto_9

    .line 655
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_37
    return-void
.end method
