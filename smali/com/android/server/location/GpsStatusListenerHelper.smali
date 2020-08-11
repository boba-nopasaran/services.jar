.class abstract Lcom/android/server/location/GpsStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsStatusListenerHelper$Operation;,
        Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsStatusListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsStatusListenerHelper"


# instance fields
.field private CM_DEBUG:Z

.field private IgnoreIfLarger:I

.field private mLastLoadPropertyTime:J

.field private mMyHandler:Landroid/os/Handler;

.field final mNmeaInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaRunnable:Ljava/lang/Runnable;

.field private mTotalIgnored:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    const-string v1, "GpsStatusListenerHelper"

    invoke-direct {p0, p1, v1}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 140
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->IgnoreIfLarger:I

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->CM_DEBUG:Z

    .line 142
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mLastLoadPropertyTime:J

    .line 162
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    .line 166
    new-instance v1, Lcom/android/server/location/GpsStatusListenerHelper$7;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsStatusListenerHelper$7;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;)V

    iput-object v1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaRunnable:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsStatusListenerHelper$1;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;)V

    .line 38
    .local v0, "nullOperation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->setSupported(ZLcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper;->cmInit(Landroid/os/Handler;)V

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsStatusListenerHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsStatusListenerHelper;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/location/GpsStatusListenerHelper;->CM_DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsStatusListenerHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsStatusListenerHelper;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mTotalIgnored:I

    return v0
.end method


# virtual methods
.method cmInit(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mMyHandler:Landroid/os/Handler;

    .line 198
    return-void
.end method

.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .registers 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGpsStatusListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGpsEnabledChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_b

    .line 59
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsStatusListenerHelper$2;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;)V

    .line 73
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 74
    return-void

    .line 66
    .end local v0    # "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    :cond_b
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsStatusListenerHelper$3;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;)V

    .restart local v0    # "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    goto :goto_7
.end method

.method public onFirstFix(I)V
    .registers 3
    .param p1, "timeToFirstFix"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$4;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;I)V

    .line 83
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 84
    return-void
.end method

.method public onGnssSvStatusChanged(I[I[F[F[F[Z[Z[Z)V
    .registers 19
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemeris"    # [Z
    .param p7, "almanac"    # [Z
    .param p8, "usedInFix"    # [Z

    .prologue
    .line 121
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/GpsStatusListenerHelper$6;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[F[Z[Z[Z)V

    .line 136
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 137
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 13
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;-><init>(JLjava/lang/String;)V

    .line 204
    .local v0, "info":Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;
    iget-object v3, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 205
    :try_start_8
    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v4, p0, Lcom/android/server/location/GpsStatusListenerHelper;->IgnoreIfLarger:I

    if-le v2, v4, :cond_5b

    .line 206
    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;

    .line 207
    .local v1, "old":Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;
    const-string v2, "GpsStatusListenerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore < ts_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->timestamp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",nmea:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->nmea:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> as overflow, size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 210
    iget v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mTotalIgnored:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mTotalIgnored:I

    .line 212
    .end local v1    # "old":Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;
    :cond_5b
    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 213
    iget-boolean v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->CM_DEBUG:Z

    if-eqz v2, :cond_96

    .line 214
    const-string v2, "GpsStatusListenerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNmeaReceived <ts_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",nmea:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> , now size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_8 .. :try_end_97} :catchall_9f

    .line 217
    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mMyHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void

    .line 216
    :catchall_9f
    move-exception v2

    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v2
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .registers 19
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$5;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/GpsStatusListenerHelper$5;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[FIII)V

    .line 109
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 110
    return-void
.end method

.method protected registerWithService()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method reloadProperty(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mLastLoadPropertyTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 147
    const-string v0, "debug.cm.gps.ignore"

    iget v1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->IgnoreIfLarger:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsStatusListenerHelper;->IgnoreIfLarger:I

    .line 148
    const-string v0, "debug.cm.gps.log"

    iget-boolean v1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->CM_DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsStatusListenerHelper;->CM_DEBUG:Z

    .line 149
    iput-wide p1, p0, Lcom/android/server/location/GpsStatusListenerHelper;->mLastLoadPropertyTime:J

    .line 151
    :cond_20
    return-void
.end method

.method protected unregisterFromService()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method
