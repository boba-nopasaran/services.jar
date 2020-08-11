.class public Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;,
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

.field private mCurrentSoundModelHandle:I

.field private mIsPowerSaveMode:Z

.field private mKeyphraseId:I

.field private final mLock:Ljava/lang/Object;

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mServiceDisabled:Z

.field private mStarted:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 78
    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    .line 79
    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 80
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 82
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 83
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 84
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v1

    .line 95
    .local v1, "status":I
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 96
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    new-instance v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 99
    if-nez v1, :cond_4e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_79

    .line 100
    :cond_4e
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listModules status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", # of modules="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 102
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 107
    :goto_78
    return-void

    .line 105
    :cond_79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_78
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method private internalClearSoundModelLocked()V
    .registers 2

    .prologue
    .line 538
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 540
    return-void
.end method

.method private internalClearStateLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 520
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 521
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 523
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    .line 524
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 525
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 528
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 531
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v0, :cond_22

    .line 532
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 533
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    .line 535
    :cond_22
    return-void
.end method

.method private onCallStateChangedLocked(Z)V
    .registers 3
    .param p1, "callActive"    # Z

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_5

    .line 365
    :goto_4
    return-void

    .line 363
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    goto :goto_4
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .registers 3
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_5

    .line 373
    :goto_4
    return-void

    .line 371
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 372
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    goto :goto_4
.end method

.method private onRecognitionAbortLocked()V
    .registers 3

    .prologue
    .line 388
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition aborted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .registers 4

    .prologue
    .line 394
    const-string v1, "SoundTriggerHelper"

    const-string v2, "Recognition failure"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :try_start_7
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_12

    .line 397
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v2, -0x80000000

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_16
    .catchall {:try_start_7 .. :try_end_12} :catchall_22

    .line 402
    :cond_12
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 404
    :goto_15
    return-void

    .line 399
    :catch_16
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_22

    .line 402
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    goto :goto_15

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    throw v1
.end method

.method private onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .prologue
    const/4 v4, 0x0

    .line 407
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Recognition success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 410
    .local v1, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v1, :cond_f

    array-length v2, v1

    if-nez v2, :cond_17

    .line 411
    :cond_f
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Invalid keyphrase recognition event!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_16
    :goto_16
    return-void

    .line 415
    :cond_17
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    aget-object v3, v1, v4

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    if-eq v2, v3, :cond_27

    .line 416
    const-string v2, "SoundTriggerHelper"

    const-string v3, "received onRecognition event for a different keyphrase"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 421
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v2, :cond_30

    .line 422
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_41

    .line 428
    :cond_30
    :goto_30
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 429
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 431
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    if-eqz v2, :cond_16

    .line 432
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    goto :goto_16

    .line 424
    :catch_41
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SoundTriggerHelper"

    const-string v3, "RemoteException in onDetected"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private onServiceDiedLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 438
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_c

    .line 439
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/16 v2, -0x20

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_1e
    .catchall {:try_start_1 .. :try_end_c} :catchall_38

    .line 444
    :cond_c
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 446
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1d

    .line 447
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 448
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 451
    :cond_1d
    :goto_1d
    return-void

    .line 441
    :catch_1e
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_38

    .line 444
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 446
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1d

    .line 447
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 448
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    goto :goto_1d

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 446
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_4a

    .line 447
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 448
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_4a
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    if-ne p1, v0, :cond_5

    .line 385
    :goto_4
    return-void

    .line 383
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    goto :goto_4
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 377
    return-void
.end method

.method private updateRecognitionLocked(Z)I
    .registers 9
    .param p1, "notify"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 454
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v5, :cond_14

    iget v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_14

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v5, :cond_15

    .line 515
    :cond_14
    :goto_14
    return v4

    .line 460
    :cond_15
    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    if-eqz v5, :cond_59

    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    if-nez v5, :cond_59

    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    if-nez v5, :cond_59

    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-nez v5, :cond_59

    move v1, v3

    .line 461
    .local v1, "start":Z
    :goto_26
    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-eq v1, v5, :cond_14

    .line 467
    if-eqz v1, :cond_77

    .line 469
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    iget-object v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-virtual {v4, v5, v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v2

    .line 470
    .local v2, "status":I
    if-eqz v2, :cond_64

    .line 471
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRecognition failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-eqz p1, :cond_57

    .line 475
    :try_start_52
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_5b

    :cond_57
    :goto_57
    move v4, v2

    .line 491
    goto :goto_14

    .end local v1    # "start":Z
    .end local v2    # "status":I
    :cond_59
    move v1, v4

    .line 460
    goto :goto_26

    .line 476
    .restart local v1    # "start":Z
    .restart local v2    # "status":I
    :catch_5b
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 483
    if-eqz p1, :cond_57

    .line 485
    :try_start_68
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_6e

    goto :goto_57

    .line 486
    :catch_6e
    move-exception v0

    .line 487
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onRecognitionResumed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "status":I
    :cond_77
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {v3, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v2

    .line 495
    .restart local v2    # "status":I
    if-eqz v2, :cond_ac

    .line 496
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    if-eqz p1, :cond_a0

    .line 499
    :try_start_9b
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a0} :catch_a3

    :cond_a0
    :goto_a0
    move v4, v2

    .line 515
    goto/16 :goto_14

    .line 500
    :catch_a3
    move-exception v0

    .line 501
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_ac
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 507
    if-eqz p1, :cond_a0

    .line 509
    :try_start_b0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b5} :catch_b6

    goto :goto_a0

    .line 510
    :catch_b6
    move-exception v0

    .line 511
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onRecognitionPaused"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_3
    const-string v0, "  module properties="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v0, :cond_75

    const-string v0, "null"

    :goto_e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 570
    const-string v0, "  keyphrase ID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 571
    const-string v0, "  sound model handle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 572
    const-string v0, "  sound model UUID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v0, :cond_78

    const-string v0, "null"

    :goto_30
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 574
    const-string v0, "  current listener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_7d

    const-string v0, "null"

    :goto_3e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 577
    const-string v0, "  requested="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 578
    const-string v0, "  started="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 579
    const-string v0, "  call active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 580
    const-string v0, "  power save mode active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 581
    const-string v0, "  service disabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 582
    monitor-exit v1

    .line 583
    return-void

    .line 569
    :cond_75
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_e

    .line 573
    :cond_78
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    goto :goto_30

    .line 575
    :cond_7d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3e

    .line 582
    :catchall_84
    move-exception v0

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .prologue
    .line 303
    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_e

    .line 304
    :cond_6
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid recognition event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_d
    return-void

    .line 309
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_e
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_11
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_21

    .line 311
    const-string v0, "SoundTriggerHelper"

    const-string v2, "received onRecognition event without any listener for it"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v1

    goto :goto_d

    .line 326
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    throw v0

    .line 314
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_21
    :try_start_21
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    packed-switch v0, :pswitch_data_36

    .line 326
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_26
    monitor-exit v1

    goto :goto_d

    .line 317
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_28
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionAbortLocked()V

    goto :goto_26

    .line 320
    :pswitch_2c
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionFailureLocked()V

    goto :goto_26

    .line 323
    :pswitch_30
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_1e

    goto :goto_26

    .line 314
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_30
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method public onServiceDied()V
    .registers 3

    .prologue
    .line 351
    const-string v0, "SoundTriggerHelper"

    const-string v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceDiedLocked()V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onServiceStateChange(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 344
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    if-ne v0, p1, :cond_b

    :goto_6
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V

    .line 346
    monitor-exit v1

    .line 347
    return-void

    .line 345
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 346
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 331
    if-nez p1, :cond_a

    .line 332
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid sound model event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_9
    return-void

    .line 336
    :cond_a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    .line 338
    monitor-exit v1

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v0
.end method

.method startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 15
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v4, -0x80000000

    .line 122
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-nez p4, :cond_c

    :cond_a
    move v3, v4

    .line 222
    :goto_b
    return v3

    .line 126
    :cond_c
    iget-object v7, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 139
    :try_start_f
    iget-boolean v8, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-nez v8, :cond_47

    .line 141
    iget-object v8, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eqz v8, :cond_55

    :goto_1b
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    .line 143
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x20

    invoke-virtual {v5, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 147
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v5, :cond_3f

    .line 148
    new-instance v5, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v5, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    .line 149
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    :cond_3f
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 155
    :cond_47
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v5, :cond_57

    .line 156
    const-string v5, "SoundTriggerHelper"

    const-string v6, "Attempting startRecognition without the capability"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v7

    move v3, v4

    goto :goto_b

    :cond_55
    move v5, v6

    .line 141
    goto :goto_1b

    .line 159
    :cond_57
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v5, :cond_74

    .line 160
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v6, 0x0

    invoke-static {v5, p0, v6}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 161
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v5, :cond_74

    .line 162
    const-string v5, "SoundTriggerHelper"

    const-string v6, "startRecognition cannot attach to sound trigger module"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v7

    move v3, v4

    goto :goto_b

    .line 170
    :cond_74
    iget v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    if-eq v5, v4, :cond_af

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {p2, v5}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    .line 172
    const-string v5, "SoundTriggerHelper"

    const-string v6, "Unloading previous sound model"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {v5, v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v3

    .line 174
    .local v3, "status":I
    if-eqz v3, :cond_a9

    .line 175
    const-string v5, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unloadSoundModel call failed with "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_a9
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 178
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 183
    .end local v3    # "status":I
    :cond_af
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v5, :cond_d0

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v5}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_d0

    .line 184
    const-string v5, "SoundTriggerHelper"

    const-string v6, "Canceling previous recognition"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_f .. :try_end_c6} :catchall_105

    .line 186
    :try_start_c6
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v6, -0x80000000

    invoke-interface {v5, v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cd} :catch_108
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_105

    .line 190
    :goto_cd
    const/4 v5, 0x0

    :try_start_ce
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 194
    :cond_d0
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 195
    .local v2, "soundModelHandle":I
    iget v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    if-eq v5, v4, :cond_da

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v5, :cond_124

    .line 197
    :cond_da
    const/4 v5, 0x1

    new-array v1, v5, [I

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    aput v6, v1, v5

    .line 198
    .local v1, "handle":[I
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v5, p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v3

    .line 199
    .restart local v3    # "status":I
    if-eqz v3, :cond_111

    .line 200
    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSoundModel call failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit v7

    goto/16 :goto_b

    .line 223
    .end local v1    # "handle":[I
    .end local v2    # "soundModelHandle":I
    .end local v3    # "status":I
    :catchall_105
    move-exception v4

    monitor-exit v7
    :try_end_107
    .catchall {:try_start_ce .. :try_end_107} :catchall_105

    throw v4

    .line 187
    :catch_108
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_109
    const-string v5, "SoundTriggerHelper"

    const-string v6, "RemoteException in onDetectionStopped"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cd

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "handle":[I
    .restart local v2    # "soundModelHandle":I
    .restart local v3    # "status":I
    :cond_111
    const/4 v5, 0x0

    aget v5, v1, v5

    if-ne v5, v4, :cond_121

    .line 204
    const-string v5, "SoundTriggerHelper"

    const-string v6, "loadSoundModel call returned invalid sound model handle"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit v7

    move v3, v4

    goto/16 :goto_b

    .line 207
    :cond_121
    const/4 v4, 0x0

    aget v2, v1, v4

    .line 213
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :cond_124
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 214
    iput p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    .line 215
    iput v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 216
    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 217
    iput-object p4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 220
    iput-object p3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 222
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    move-result v3

    monitor-exit v7
    :try_end_137
    .catchall {:try_start_109 .. :try_end_137} :catchall_105

    goto/16 :goto_b
.end method

.method stopAllRecognitions()V
    .registers 5

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_d

    .line 287
    :cond_b
    monitor-exit v2

    .line 298
    :goto_c
    return-void

    .line 290
    :cond_d
    iget v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_18

    .line 291
    monitor-exit v2

    goto :goto_c

    .line 297
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 294
    :cond_18
    const/4 v1, 0x0

    :try_start_19
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 295
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    move-result v0

    .line 296
    .local v0, "status":I
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 297
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_15

    goto :goto_c
.end method

.method stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    const/high16 v0, -0x80000000

    .line 237
    if-nez p2, :cond_5

    .line 277
    :goto_4
    return v0

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 249
    :try_start_8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_1c

    .line 250
    :cond_10
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without the capability"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit v2

    goto :goto_4

    .line 278
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1

    .line 254
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v1, :cond_29

    .line 256
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    monitor-exit v2

    goto :goto_4

    .line 259
    :cond_29
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_3e

    .line 262
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition for another recognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v2

    goto :goto_4

    .line 267
    :cond_3e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 268
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    move-result v0

    .line 269
    .local v0, "status":I
    if-eqz v0, :cond_4a

    .line 270
    monitor-exit v2

    goto :goto_4

    .line 276
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 277
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_19

    goto :goto_4
.end method
