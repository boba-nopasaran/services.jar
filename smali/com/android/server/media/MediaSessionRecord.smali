.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final ACTIVE_BUFFER:I = 0x7530

.field private static final DEBUG:Z = false

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/ISessionControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLastActiveTime:J

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Landroid/content/pm/ParceledListSlice;

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mTag:Ljava/lang/String;

.field private final mUseMasterVolume:Z

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V
    .registers 12
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    .line 119
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 121
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 122
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 126
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 724
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 131
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 132
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 133
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 134
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 135
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 137
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 138
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v0, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 139
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 140
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-virtual {p8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 141
    invoke-virtual {p7}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 143
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 144
    invoke-virtual {p7}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUseMasterVolume:Z

    .line 146
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/AudioAttributes;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method private getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    .line 715
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 716
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_24

    .line 717
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/ISessionControllerCallback;

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 721
    .end local v1    # "i":I
    :goto_20
    return v1

    .line 716
    .restart local v1    # "i":I
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 721
    :cond_24
    const/4 v1, -0x1

    goto :goto_20
.end method

.method private getShortMetadataString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 518
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_28

    const/4 v1, 0x0

    .line 519
    .local v1, "fields":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_2f

    const/4 v0, 0x0

    .line 521
    .local v0, "description":Landroid/media/MediaDescription;
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 518
    .end local v0    # "description":Landroid/media/MediaDescription;
    .end local v1    # "fields":I
    :cond_28
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->size()I

    move-result v1

    goto :goto_5

    .line 519
    .restart local v1    # "fields":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    goto :goto_a
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 21

    .prologue
    .line 682
    const-wide/16 v10, -0x1

    .line 683
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 684
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 685
    .local v12, "state":Landroid/media/session/PlaybackState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 688
    :cond_27
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_83

    .line 689
    const/4 v9, 0x0

    .line 690
    .local v9, "result":Landroid/media/session/PlaybackState;
    if-eqz v12, :cond_80

    .line 691
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_40

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_40

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_80

    .line 694
    :cond_40
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v14

    .line 695
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 696
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_80

    .line 697
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v3

    sub-long v16, v7, v14

    move-wide/from16 v0, v16

    long-to-float v6, v0

    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v16, v0

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v18

    add-long v4, v16, v18

    .line 699
    .local v4, "position":J
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-ltz v3, :cond_86

    cmp-long v3, v4, v10

    if-lez v3, :cond_86

    .line 700
    move-wide v4, v10

    .line 704
    :cond_6c
    :goto_6c
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2, v12}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 705
    .local v2, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 707
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v9

    .line 711
    .end local v2    # "builder":Landroid/media/session/PlaybackState$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v14    # "updateTime":J
    :cond_80
    if-nez v9, :cond_8f

    .end local v12    # "state":Landroid/media/session/PlaybackState;
    :goto_82
    return-object v12

    .line 688
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    :catchall_83
    move-exception v3

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v3

    .line 701
    .restart local v4    # "position":J
    .restart local v7    # "currentTime":J
    .restart local v9    # "result":Landroid/media/session/PlaybackState;
    .restart local v12    # "state":Landroid/media/session/PlaybackState;
    .restart local v14    # "updateTime":J
    :cond_86
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-gez v3, :cond_6c

    .line 702
    const-wide/16 v4, 0x0

    goto :goto_6c

    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v14    # "updateTime":J
    :cond_8f
    move-object v12, v9

    .line 711
    goto :goto_82
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 639
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 640
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v3, :cond_9

    .line 641
    monitor-exit v4

    .line 655
    :goto_8
    return-void

    .line 643
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3b

    .line 644
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2f

    .line 646
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    invoke-interface {v0, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_32
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    .line 643
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 647
    :catch_21
    move-exception v1

    .line 648
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_22
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removing dead callback in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 654
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v3

    .line 650
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_32
    move-exception v1

    .line 651
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v3, "MediaSessionRecord"

    const-string v5, "unexpected exception in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 654
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_2f

    goto :goto_8
.end method

.method private pushExtrasUpdate()V
    .registers 7

    .prologue
    .line 601
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 602
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v3, :cond_9

    .line 603
    monitor-exit v4

    .line 617
    :goto_8
    return-void

    .line 605
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3d

    .line 606
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 608
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 605
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 609
    :catch_23
    move-exception v1

    .line 610
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removed dead callback in pushExtrasUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 616
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 612
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 613
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string v5, "unexpected exception in pushExtrasUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 616
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_31

    goto :goto_8
.end method

.method private pushMetadataUpdate()V
    .registers 7

    .prologue
    .line 544
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 545
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v3, :cond_9

    .line 546
    monitor-exit v4

    .line 560
    :goto_8
    return-void

    .line 548
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3d

    .line 549
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 551
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 548
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 552
    :catch_23
    move-exception v1

    .line 553
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removing dead callback in pushMetadataUpdate. "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 559
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 555
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 556
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string v5, "unexpected exception in pushMetadataUpdate. "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 559
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_31

    goto :goto_8
.end method

.method private pushPlaybackStateUpdate()V
    .registers 7

    .prologue
    .line 525
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 526
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v3, :cond_9

    .line 527
    monitor-exit v4

    .line 541
    :goto_8
    return-void

    .line 529
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3d

    .line 530
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 532
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 529
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 533
    :catch_23
    move-exception v1

    .line 534
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removed dead callback in pushPlaybackStateUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 540
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 536
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 537
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string v5, "unexpected exception in pushPlaybackStateUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 540
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_31

    goto :goto_8
.end method

.method private pushQueueTitleUpdate()V
    .registers 7

    .prologue
    .line 582
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 583
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v3, :cond_9

    .line 584
    monitor-exit v4

    .line 598
    :goto_8
    return-void

    .line 586
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3d

    .line 587
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 589
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 586
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 590
    :catch_23
    move-exception v1

    .line 591
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removed dead callback in pushQueueTitleUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 597
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 593
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 594
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string v5, "unexpected exception in pushQueueTitleUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 597
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_31

    goto :goto_8
.end method

.method private pushQueueUpdate()V
    .registers 7

    .prologue
    .line 563
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 564
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v3, :cond_9

    .line 565
    monitor-exit v4

    .line 579
    :goto_8
    return-void

    .line 567
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3d

    .line 568
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 570
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 567
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 571
    :catch_23
    move-exception v1

    .line 572
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removed dead callback in pushQueueUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 578
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 574
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 575
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string v5, "unexpected exception in pushQueueUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 578
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_31

    goto :goto_8
.end method

.method private pushSessionDestroyed()V
    .registers 7

    .prologue
    .line 658
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 661
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v3, :cond_9

    .line 662
    monitor-exit v4

    .line 678
    :goto_8
    return-void

    .line 664
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3b

    .line 665
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2f

    .line 667
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    invoke-interface {v0}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_32
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    .line 664
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 668
    :catch_21
    move-exception v1

    .line 669
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_22
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removing dead callback in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 677
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v3

    .line 671
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_32
    move-exception v1

    .line 672
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v3, "MediaSessionRecord"

    const-string v5, "unexpected exception in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 676
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3b
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 677
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_2f

    goto :goto_8
.end method

.method private pushVolumeUpdate()V
    .registers 8

    .prologue
    .line 620
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 621
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v4, :cond_9

    .line 622
    monitor-exit v5

    .line 636
    :goto_8
    return-void

    .line 624
    :cond_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v3

    .line 625
    .local v3, "info":Landroid/media/session/ParcelableVolumeInfo;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_3c

    .line 626
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_30

    .line 628
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_21
    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_24} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_33
    .catchall {:try_start_21 .. :try_end_24} :catchall_30

    .line 625
    :goto_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 629
    :catch_27
    move-exception v1

    .line 630
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_28
    const-string v4, "MediaSessionRecord"

    const-string v6, "Removing dead callback in pushVolumeUpdate. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 635
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v4

    .line 631
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    .restart local v3    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catch_33
    move-exception v1

    .line 632
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v4, "MediaSessionRecord"

    const-string v6, "Unexpected exception in pushVolumeUpdate. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 635
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_30

    goto :goto_8
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;IZ)V
    .registers 23
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "useSuggested"    # Z

    .prologue
    .line 245
    and-int/lit8 v15, p2, 0x4

    .line 246
    .local v15, "previousFlagPlaySound":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v4

    if-nez v4, :cond_15

    const/high16 v4, 0x10000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 247
    :cond_15
    and-int/lit8 p2, p2, -0x5

    .line 249
    :cond_17
    const/16 v4, -0x63

    move/from16 v0, p1

    if-ne v0, v4, :cond_53

    const/4 v13, 0x1

    .line 250
    .local v13, "isMute":Z
    :goto_1e
    const/4 v4, 0x1

    move/from16 v0, p1

    if-le v0, v4, :cond_55

    .line 251
    const/16 p1, 0x1

    .line 255
    :cond_25
    :goto_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_135

    .line 256
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/media/MediaSessionRecord;->mUseMasterVolume:Z

    if-eqz v4, :cond_85

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v12

    .line 260
    .local v12, "isMasterMute":Z
    if-eqz v13, :cond_5f

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v12, :cond_5d

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v8, v6, Lcom/android/server/media/MediaSessionService;->mICallback:Landroid/os/IBinder;

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioManagerInternal;->setMasterMuteForUid(ZILjava/lang/String;Landroid/os/IBinder;I)V

    .line 340
    .end local v12    # "isMasterMute":Z
    :cond_52
    :goto_52
    return-void

    .line 249
    .end local v13    # "isMute":Z
    :cond_53
    const/4 v13, 0x0

    goto :goto_1e

    .line 252
    .restart local v13    # "isMute":Z
    :cond_55
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_25

    .line 253
    const/16 p1, -0x1

    goto :goto_25

    .line 261
    .restart local v12    # "isMasterMute":Z
    :cond_5d
    const/4 v5, 0x0

    goto :goto_43

    .line 264
    :cond_5f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/media/AudioManagerInternal;->adjustMasterVolumeForUid(IILjava/lang/String;I)V

    .line 266
    if-eqz v12, :cond_52

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v8, v6, Lcom/android/server/media/MediaSessionService;->mICallback:Landroid/os/IBinder;

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioManagerInternal;->setMasterMuteForUid(ZILjava/lang/String;Landroid/os/IBinder;I)V

    goto :goto_52

    .line 273
    .end local v12    # "isMasterMute":Z
    :cond_85
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v5

    .line 274
    .local v5, "stream":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v14

    .line 275
    .local v14, "isStreamMute":Z
    if-eqz p5, :cond_108

    .line 276
    const/4 v4, 0x0

    invoke-static {v5, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 277
    if-eqz v13, :cond_ad

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    if-nez v14, :cond_ab

    const/4 v4, 0x1

    :goto_a7
    invoke-virtual {v6, v5, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_52

    :cond_ab
    const/4 v4, 0x0

    goto :goto_a7

    .line 280
    :cond_ad
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 282
    if-eqz v14, :cond_52

    if-eqz p1, :cond_52

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_52

    .line 287
    :cond_c9
    or-int p2, p2, v15

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v6, -0x80000000

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v14

    .line 290
    if-eqz v13, :cond_e7

    .line 291
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v7, -0x80000000

    if-nez v14, :cond_e5

    const/4 v4, 0x1

    :goto_e0
    invoke-virtual {v6, v7, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_52

    :cond_e5
    const/4 v4, 0x0

    goto :goto_e0

    .line 294
    :cond_e7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const/high16 v7, -0x80000000

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 297
    if-eqz v14, :cond_52

    if-eqz p1, :cond_52

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_52

    .line 304
    :cond_108
    if-eqz v13, :cond_118

    .line 305
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    if-nez v14, :cond_116

    const/4 v4, 0x1

    :goto_111
    invoke-virtual {v6, v5, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_52

    :cond_116
    const/4 v4, 0x0

    goto :goto_111

    .line 307
    :cond_118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioManagerInternal;->adjustStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 309
    if-eqz v14, :cond_52

    if-eqz p1, :cond_52

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_52

    .line 315
    .end local v5    # "stream":I
    .end local v14    # "isStreamMute":Z
    :cond_135
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-eqz v4, :cond_52

    .line 319
    if-eqz v13, :cond_146

    .line 320
    const-string v4, "MediaSessionRecord"

    const-string v6, "Muting remote playback is not supported"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 323
    :cond_146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(I)V

    .line 325
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v4, :cond_1a6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    move/from16 v16, v0

    .line 326
    .local v16, "volumeBefore":I
    :goto_15b
    add-int v4, v16, p1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 327
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_199

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 333
    :cond_199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    move/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    goto/16 :goto_52

    .line 325
    .end local v16    # "volumeBefore":I
    :cond_1a6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    move/from16 v16, v0

    goto :goto_15b
.end method

.method public binderDied()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    .line 466
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "launchIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mediaButtonReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rating type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_1f4

    const/4 v1, 0x0

    :goto_143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getShortMetadataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    if-nez v1, :cond_1fc

    const/4 v1, 0x0

    :goto_1e8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    return-void

    .line 503
    :cond_1f4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_143

    .line 508
    :cond_1fc
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1e8
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    # getter for: Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .registers 3

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .registers 2

    .prologue
    .line 456
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackType()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .registers 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .registers 6
    .param p1, "flag"    # I

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPlaybackActive(Z)Z
    .registers 12
    .param p1, "includeRecentlyActive"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 388
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v5, :cond_f

    move v2, v3

    .line 389
    .local v2, "state":I
    :goto_7
    invoke-static {v2}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move v3, v4

    .line 398
    :cond_e
    :goto_e
    return v3

    .line 388
    .end local v2    # "state":I
    :cond_f
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    goto :goto_7

    .line 392
    .restart local v2    # "state":I
    :cond_16
    if-eqz p1, :cond_e

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v5, 0x2

    if-ne v2, v5, :cond_e

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    sub-long v0, v6, v8

    .line 394
    .local v0, "inactiveTime":J
    const-wide/16 v6, 0x7530

    cmp-long v5, v0, v6

    if-gez v5, :cond_e

    move v3, v4

    .line 395
    goto :goto_e
.end method

.method public isSystemPriority()Z
    .registers 5

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v0, :cond_9

    .line 475
    monitor-exit v1

    .line 480
    :goto_8
    return-void

    .line 477
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 478
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 479
    monitor-exit v1

    goto :goto_8

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "ke"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 488
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;I)V
    .registers 12
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 343
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 344
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 345
    .local v1, "stream":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 368
    .end local v1    # "stream":I
    :cond_15
    :goto_15
    return-void

    .line 347
    :cond_16
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 351
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 352
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(I)V

    .line 354
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_59

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 355
    .local v6, "volumeBefore":I
    :goto_30
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 356
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v6, v0, :cond_53

    .line 359
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 361
    :cond_53
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    goto :goto_15

    .line 354
    .end local v6    # "volumeBefore":I
    :cond_59
    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    goto :goto_30
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
