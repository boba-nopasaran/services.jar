.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$1;,
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private mEffectsSuppressed:Z

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private mPreviousRingerMode:I

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mZenMode:I

.field private mZenModeHelperExt:Lcom/mediatek/common/notification/IZenModeHelperExt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 96
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 98
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 100
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 101
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 102
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 105
    const-class v0, Lcom/mediatek/common/notification/IZenModeHelperExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/notification/IZenModeHelperExt;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeHelperExt:Lcom/mediatek/common/notification/IZenModeHelperExt;

    .line 108
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method private applyRestrictions()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 274
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v6, :cond_32

    move v3, v4

    .line 277
    .local v3, "zen":Z
    :goto_8
    iget-boolean v2, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 278
    .local v2, "muteNotifications":Z
    const/4 v6, 0x5

    invoke-direct {p0, v2, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 281
    if-eqz v3, :cond_16

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v6, :cond_1a

    :cond_16
    iget-boolean v6, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    if-eqz v6, :cond_34

    :cond_1a
    move v1, v4

    .line 282
    .local v1, "muteCalls":Z
    :goto_1b
    const/4 v6, 0x6

    invoke-direct {p0, v1, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 288
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeHelperExt:Lcom/mediatek/common/notification/IZenModeHelperExt;

    if-eqz v6, :cond_38

    .line 289
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeHelperExt:Lcom/mediatek/common/notification/IZenModeHelperExt;

    iget v7, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v7, v8, :cond_36

    :goto_29
    invoke-interface {v6, v4}, Lcom/mediatek/common/notification/IZenModeHelperExt;->customizeMuteAlarm(Z)Z

    move-result v0

    .line 296
    .local v0, "muteAlarms":Z
    :goto_2d
    const/4 v4, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 297
    return-void

    .end local v0    # "muteAlarms":Z
    .end local v1    # "muteCalls":Z
    .end local v2    # "muteNotifications":Z
    .end local v3    # "zen":Z
    :cond_32
    move v3, v5

    .line 274
    goto :goto_8

    .restart local v2    # "muteNotifications":Z
    .restart local v3    # "zen":Z
    :cond_34
    move v1, v5

    .line 281
    goto :goto_1b

    .restart local v1    # "muteCalls":Z
    :cond_36
    move v4, v5

    .line 289
    goto :goto_29

    .line 292
    :cond_38
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v6, v8, :cond_3e

    move v0, v4

    .restart local v0    # "muteAlarms":Z
    :goto_3d
    goto :goto_2d

    .end local v0    # "muteAlarms":Z
    :cond_3e
    move v0, v5

    goto :goto_3d
.end method

.method private applyRestrictions(ZI)V
    .registers 9
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x3

    if-eqz p1, :cond_16

    move v1, v2

    :goto_9
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1c

    if-eqz p1, :cond_18

    :goto_12
    invoke-virtual {v1, v4, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 307
    return-void

    :cond_16
    move v1, v3

    .line 301
    goto :goto_9

    :cond_18
    move v2, v3

    .line 304
    goto :goto_12
.end method

.method private applyZenToRingerMode()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 347
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v2, :cond_6

    .line 370
    :cond_5
    :goto_5
    return-void

    .line 349
    :cond_6
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v1

    .line 350
    .local v1, "ringerModeInternal":I
    move v0, v1

    .line 351
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_30

    .line 367
    :cond_12
    :goto_12
    if-eq v0, v3, :cond_5

    .line 368
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_5

    .line 353
    :pswitch_1c
    if-eqz v1, :cond_12

    .line 354
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 355
    const/4 v0, 0x0

    goto :goto_12

    .line 360
    :pswitch_22
    if-nez v1, :cond_12

    .line 361
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    if-eq v2, v3, :cond_2d

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 363
    :goto_2a
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    goto :goto_12

    .line 361
    :cond_2d
    const/4 v0, 0x2

    goto :goto_2a

    .line 351
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method

.method private audienceMatches(F)Z
    .registers 6
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 528
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v2, :pswitch_data_36

    .line 536
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_25
    :goto_25
    :pswitch_25
    return v0

    .line 532
    :pswitch_26
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_25

    move v0, v1

    goto :goto_25

    .line 534
    :pswitch_2e
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_25

    move v0, v1

    goto :goto_25

    .line 528
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_25
        :pswitch_26
        :pswitch_2e
    .end packed-switch
.end method

.method private dispatchOnConfigChanged()V
    .registers 4

    .prologue
    .line 448
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 449
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_6

    .line 451
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .registers 4

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 455
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_6

    .line 457
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 464
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 490
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 491
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_b

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    :cond_b
    const/4 v2, 0x0

    .line 494
    :goto_c
    return v2

    .line 492
    :cond_d
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_default_application"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_c
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_34

    .line 480
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 482
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :goto_14
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 483
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_34

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_34
    if-eqz p1, :cond_4a

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    :goto_47
    return v1

    .line 482
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_48
    const/4 v1, 0x0

    goto :goto_14

    .line 485
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_4a
    const/4 v1, 0x0

    goto :goto_47
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 470
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 498
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 460
    const-string v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110003

    :try_start_4
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 114
    :cond_8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_19

    .line 115
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_22
    .catchall {:try_start_4 .. :try_end_12} :catchall_2e

    move-result-object v0

    .line 116
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_8

    .line 121
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_18
    return-object v0

    .line 121
    :cond_19
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    :goto_1c
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_18

    .line 118
    :catch_22
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 121
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private declared-synchronized setZenMode(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "zenMode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    .line 250
    monitor-enter p0

    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    if-ne v0, p1, :cond_a

    .line 260
    :goto_8
    monitor-exit p0

    return-void

    .line 252
    :cond_a
    :try_start_a
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceUpdateZenMode(II)V

    .line 253
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 254
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    if-eqz p3, :cond_23

    .line 256
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 258
    :cond_23
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 259
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$100(Lcom/android/server/notification/ZenModeHelper$H;)V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_2c

    goto :goto_8

    .line 250
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v0

    if-nez v0, :cond_11

    .line 230
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static zenModeFromListenerInterruptionFilter(II)I
    .registers 2
    .param p0, "listenerInterruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 156
    packed-switch p0, :pswitch_data_a

    .line 164
    .end local p1    # "defValue":I
    :goto_3
    return p1

    .line 158
    .restart local p1    # "defValue":I
    :pswitch_4
    const/4 p1, 0x0

    goto :goto_3

    .line 160
    :pswitch_6
    const/4 p1, 0x1

    goto :goto_3

    .line 162
    :pswitch_8
    const/4 p1, 0x2

    goto :goto_3

    .line 156
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPreviousRingerMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEffectsSuppressed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 317
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getZenMode()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v0, :pswitch_data_e

    .line 150
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 144
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 146
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 148
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_6

    .line 142
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 474
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 11
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 509
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 510
    .local v1, "zen":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    .line 519
    :cond_7
    :goto_7
    return v2

    .line 511
    :cond_8
    if-ne v1, v3, :cond_1b

    .line 512
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_7

    .line 513
    if-eqz p3, :cond_1b

    .line 514
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 516
    .local v0, "contactAffinity":F
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v2

    goto :goto_7

    .end local v0    # "contactAffinity":F
    :cond_1b
    move v2, v3

    .line 519
    goto :goto_7
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;I)I
    .registers 11
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 413
    move v3, p2

    .line 414
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_19

    move v0, v4

    .line 415
    .local v0, "isChange":Z
    :goto_6
    if-ne p4, v4, :cond_1b

    move v1, v4

    .line 417
    .local v1, "isVibrate":Z
    :goto_9
    const/4 v2, -0x1

    .line 418
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_2e

    .line 438
    :cond_d
    :goto_d
    const/4 v4, -0x1

    if-eq v2, v4, :cond_15

    .line 439
    const-string v4, "ringerModeExternal"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 442
    :cond_15
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 444
    return v3

    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_19
    move v0, v5

    .line 414
    goto :goto_6

    .restart local v0    # "isChange":Z
    :cond_1b
    move v1, v5

    .line 415
    goto :goto_9

    .line 420
    .restart local v1    # "isVibrate":Z
    .restart local v2    # "newZen":I
    :pswitch_1d
    if-eqz v0, :cond_26

    .line 424
    const/4 v2, 0x2

    .line 425
    if-eqz v1, :cond_24

    move v3, v4

    :goto_23
    goto :goto_d

    :cond_24
    const/4 v3, 0x2

    goto :goto_23

    .line 428
    :cond_26
    move v3, p4

    .line 430
    goto :goto_d

    .line 433
    :pswitch_28
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_d

    .line 434
    const/4 v2, 0x0

    goto :goto_d

    .line 418
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;I)I
    .registers 12
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 375
    if-eq p1, p2, :cond_1b

    const/4 v0, 0x1

    .line 377
    .local v0, "isChange":Z
    :goto_5
    move v2, p2

    .line 379
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 380
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_32

    .line 399
    :cond_a
    :goto_a
    if-eq v1, v6, :cond_11

    .line 400
    const-string v4, "ringerModeInternal"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 403
    :cond_11
    if-nez v0, :cond_17

    if-ne v1, v6, :cond_17

    if-eq p4, v2, :cond_1a

    .line 404
    :cond_17
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 407
    :cond_1a
    return v2

    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_1b
    move v0, v3

    .line 375
    goto :goto_5

    .line 382
    .restart local v0    # "isChange":Z
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_1d
    if-eqz v0, :cond_a

    .line 386
    const/4 v1, 0x2

    goto :goto_a

    .line 391
    :pswitch_21
    if-eqz v0, :cond_2c

    if-nez p1, :cond_2c

    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2c

    .line 393
    const/4 v1, 0x0

    goto :goto_a

    .line 394
    :cond_2c
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_a

    .line 395
    const/4 v2, 0x0

    goto :goto_a

    .line 380
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public onSystemReady()V
    .registers 2

    .prologue
    .line 135
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 136
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_13

    .line 137
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 139
    :cond_13
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 321
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_9

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 324
    :cond_9
    return-void
.end method

.method public declared-synchronized readZenModeFromSetting()V
    .registers 5

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 270
    .local v0, "newMode":I
    const-string v1, "setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 271
    monitor-exit p0

    return-void

    .line 268
    .end local v0    # "newMode":I
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "interruptionFilter"    # I

    .prologue
    const/4 v1, -0x1

    .line 169
    invoke-static {p2, v1}, Lcom/android/server/notification/ZenModeHelper;->zenModeFromListenerInterruptionFilter(II)I

    move-result v0

    .line 170
    .local v0, "newZen":I
    if-eq v0, v1, :cond_23

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 173
    :cond_23
    return-void

    .line 171
    :cond_24
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)Z
    .registers 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v1, 0x1

    .line 335
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    const/4 v1, 0x0

    .line 343
    :cond_a
    :goto_a
    return v1

    .line 336
    :cond_b
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 337
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 338
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 340
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode_config_etag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    goto :goto_a
.end method

.method public setEffectsSuppressed(Z)V
    .registers 3
    .param p1, "effectsSuppressed"    # Z

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    if-ne v0, p1, :cond_5

    .line 179
    :goto_4
    return-void

    .line 177
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 178
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    goto :goto_4
.end method

.method public setZenMode(ILjava/lang/String;)V
    .registers 4
    .param p1, "zenMode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 242
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 182
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 224
    :cond_8
    :goto_8
    return v0

    .line 185
    :cond_9
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_74

    goto :goto_8

    .line 191
    :pswitch_f
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 196
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 197
    const-string v1, "priorityApp"

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_8

    .line 188
    :pswitch_22
    const-string v0, "none"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 189
    goto :goto_8

    .line 200
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 201
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_3c

    .line 202
    const-string v0, "!allowCalls"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 203
    goto :goto_8

    .line 205
    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_8

    .line 207
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_54

    .line 209
    const-string v0, "!allowMessages"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 210
    goto :goto_8

    .line 212
    :cond_54
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_8

    .line 214
    :cond_59
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 215
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v2, :cond_8

    .line 216
    const-string v0, "!allowEvents"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 217
    goto :goto_8

    .line 221
    :cond_6c
    const-string v0, "!priority"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 222
    goto :goto_8

    .line 185
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_f
        :pswitch_22
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 328
    return-void
.end method
