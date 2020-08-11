.class public Lcom/android/server/notification/ZenLog;
.super Ljava/lang/Object;
.source "ZenLog.java"


# static fields
.field private static final DEBUG:Z

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MSGS:[Ljava/lang/String;

.field private static final SIZE:I

.field private static final TAG:Ljava/lang/String; = "ZenLog"

.field private static final TIMES:[J

.field private static final TYPES:[I

.field private static final TYPE_ALLOW_DISABLE:I = 0x2

.field private static final TYPE_CONFIG:I = 0xb

.field private static final TYPE_DISABLE_EFFECTS:I = 0xd

.field private static final TYPE_DOWNTIME:I = 0x5

.field private static final TYPE_EXIT_CONDITION:I = 0x8

.field private static final TYPE_INTERCEPTED:I = 0x1

.field private static final TYPE_NOT_INTERCEPTED:I = 0xc

.field private static final TYPE_SET_RINGER_MODE_EXTERNAL:I = 0x3

.field private static final TYPE_SET_RINGER_MODE_INTERNAL:I = 0x4

.field private static final TYPE_SET_ZEN_MODE:I = 0x6

.field private static final TYPE_SUBSCRIBE:I = 0x9

.field private static final TYPE_UNSUBSCRIBE:I = 0xa

.field private static final TYPE_UPDATE_ZEN_MODE:I = 0x7

.field private static sNext:I

.field private static sSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/notification/ZenLog;->DEBUG:Z

    .line 39
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_28

    const/16 v0, 0x64

    :goto_a
    sput v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    .line 41
    sget v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    new-array v0, v0, [J

    sput-object v0, Lcom/android/server/notification/ZenLog;->TIMES:[J

    .line 42
    sget v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/notification/ZenLog;->TYPES:[I

    .line 43
    sget v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void

    .line 39
    :cond_28
    const/16 v0, 0x14

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(ILjava/lang/String;)V
    .registers 8
    .param p0, "type"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v1, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    monitor-enter v1

    .line 171
    :try_start_3
    sget-object v0, Lcom/android/server/notification/ZenLog;->TIMES:[J

    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 172
    sget-object v0, Lcom/android/server/notification/ZenLog;->TYPES:[I

    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    aput p0, v0, v2

    .line 173
    sget-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    aput-object p1, v0, v2

    .line 174
    sget v0, Lcom/android/server/notification/ZenLog;->sNext:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int/2addr v0, v2

    sput v0, Lcom/android/server/notification/ZenLog;->sNext:I

    .line 175
    sget v0, Lcom/android/server/notification/ZenLog;->sSize:I

    sget v2, Lcom/android/server/notification/ZenLog;->SIZE:I

    if-ge v0, v2, :cond_2e

    .line 176
    sget v0, Lcom/android/server/notification/ZenLog;->sSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/notification/ZenLog;->sSize:I

    .line 178
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_54

    .line 179
    sget-boolean v0, Lcom/android/server/notification/ZenLog;->DEBUG:Z

    if-eqz v0, :cond_53

    const-string v0, "ZenLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_53
    return-void

    .line 178
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method private static componentToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 166
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v4, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    monitor-enter v4

    .line 184
    :try_start_3
    sget v3, Lcom/android/server/notification/ZenLog;->sNext:I

    sget v5, Lcom/android/server/notification/ZenLog;->sSize:I

    sub-int/2addr v3, v5

    sget v5, Lcom/android/server/notification/ZenLog;->SIZE:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int v2, v3, v5

    .line 185
    .local v2, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    sget v3, Lcom/android/server/notification/ZenLog;->sSize:I

    if-ge v0, v3, :cond_4e

    .line 186
    add-int v3, v2, v0

    sget v5, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int v1, v3, v5

    .line 187
    .local v1, "j":I
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    sget-object v3, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    sget-object v6, Lcom/android/server/notification/ZenLog;->TIMES:[J

    aget-wide v6, v6, v1

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 190
    sget-object v3, Lcom/android/server/notification/ZenLog;->TYPES:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    sget-object v3, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 194
    .end local v1    # "j":I
    :cond_4e
    monitor-exit v4

    .line 195
    return-void

    .line 194
    .end local v0    # "i":I
    .end local v2    # "start":I
    :catchall_50
    move-exception v3

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v3
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "ringerMode"    # I

    .prologue
    .line 148
    packed-switch p0, :pswitch_data_10

    .line 152
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 149
    :pswitch_6
    const-string v0, "silent"

    goto :goto_5

    .line 150
    :pswitch_9
    const-string v0, "vibrate"

    goto :goto_5

    .line 151
    :pswitch_c
    const-string v0, "normal"

    goto :goto_5

    .line 148
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private static subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;
    .registers 3
    .param p0, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 125
    if-nez p0, :cond_5

    const-string v0, "no provider"

    :goto_4
    return-object v0

    :cond_5
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    const-string v0, "ok"

    goto :goto_4
.end method

.method public static traceConfig(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V
    .registers 4
    .param p0, "oldConfig"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "newConfig"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 117
    const/16 v1, 0xb

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 118
    return-void

    .line 117
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 5
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 121
    const/16 v0, 0xd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 122
    return-void
.end method

.method public static traceDowntimeAutotrigger(Ljava/lang/String;)V
    .registers 2
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 94
    return-void
.end method

.method public static traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 105
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public static traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 5
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    :goto_8
    return-void

    .line 66
    :cond_9
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public static traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 5
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_7

    .line 72
    :goto_6
    return-void

    .line 71
    :cond_7
    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    goto :goto_6
.end method

.method public static traceSetRingerModeExternal(IILjava/lang/String;II)V
    .registers 8
    .param p0, "ringerModeOld"    # I
    .param p1, "ringerModeNew"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "ringerModeInternalIn"    # I
    .param p4, "ringerModeInternalOut"    # I

    .prologue
    .line 76
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public static traceSetRingerModeInternal(IILjava/lang/String;II)V
    .registers 8
    .param p0, "ringerModeOld"    # I
    .param p1, "ringerModeNew"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "ringerModeExternalIn"    # I
    .param p4, "ringerModeExternalOut"    # I

    .prologue
    .line 85
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public static traceSetZenMode(ILjava/lang/String;)V
    .registers 5
    .param p0, "zenMode"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method public static traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p2, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 109
    const/16 v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 110
    return-void
.end method

.method public static traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p2, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 113
    const/16 v0, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 114
    return-void
.end method

.method public static traceUpdateZenMode(II)V
    .registers 5
    .param p0, "fromMode"    # I
    .param p1, "toMode"    # I

    .prologue
    .line 101
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 129
    packed-switch p0, :pswitch_data_2e

    .line 143
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 130
    :pswitch_6
    const-string v0, "intercepted"

    goto :goto_5

    .line 131
    :pswitch_9
    const-string v0, "allow_disable"

    goto :goto_5

    .line 132
    :pswitch_c
    const-string v0, "set_ringer_mode_external"

    goto :goto_5

    .line 133
    :pswitch_f
    const-string v0, "set_ringer_mode_internal"

    goto :goto_5

    .line 134
    :pswitch_12
    const-string v0, "downtime"

    goto :goto_5

    .line 135
    :pswitch_15
    const-string v0, "set_zen_mode"

    goto :goto_5

    .line 136
    :pswitch_18
    const-string v0, "update_zen_mode"

    goto :goto_5

    .line 137
    :pswitch_1b
    const-string v0, "exit_condition"

    goto :goto_5

    .line 138
    :pswitch_1e
    const-string v0, "subscribe"

    goto :goto_5

    .line 139
    :pswitch_21
    const-string v0, "unsubscribe"

    goto :goto_5

    .line 140
    :pswitch_24
    const-string v0, "config"

    goto :goto_5

    .line 141
    :pswitch_27
    const-string v0, "not_intercepted"

    goto :goto_5

    .line 142
    :pswitch_2a
    const-string v0, "disable_effects"

    goto :goto_5

    .line 129
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "zenMode"    # I

    .prologue
    .line 157
    packed-switch p0, :pswitch_data_10

    .line 161
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 158
    :pswitch_6
    const-string v0, "off"

    goto :goto_5

    .line 159
    :pswitch_9
    const-string v0, "important_interruptions"

    goto :goto_5

    .line 160
    :pswitch_c
    const-string v0, "no_interruptions"

    goto :goto_5

    .line 157
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method
