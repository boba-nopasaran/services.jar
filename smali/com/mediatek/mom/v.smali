.class Lcom/mediatek/mom/v;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static av:Z

.field private static c:Lcom/mediatek/mom/ControllerBase;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private W:Landroid/app/IActivityManager;

.field private au:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/mom/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/pm/IPackageManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/mediatek/mom/v;->mContext:Landroid/content/Context;

    .line 66
    sput-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/v;->av:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/mediatek/mom/v;->W:Landroid/app/IActivityManager;

    .line 68
    iput-object v1, p0, Lcom/mediatek/mom/v;->g:Landroid/content/pm/IPackageManager;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    .line 71
    iput-object v1, p0, Lcom/mediatek/mom/v;->mHandler:Landroid/os/Handler;

    .line 81
    sput-object p1, Lcom/mediatek/mom/v;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/mediatek/mom/v;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-static {}, Lcom/mediatek/mom/j;->h()Ljava/util/List;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_3a

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 86
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    invoke-static {v0}, Lcom/mediatek/mom/j;->i(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 89
    invoke-direct {p0, v0}, Lcom/mediatek/mom/v;->G(I)V

    .line 85
    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 93
    :cond_3a
    const-string v0, "Normal Bootup Start"

    invoke-virtual {p0, v0}, Lcom/mediatek/mom/v;->l(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private G(I)V
    .registers 9

    .prologue
    .line 107
    iget-object v6, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v6

    .line 108
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    monitor-exit v6

    .line 127
    :goto_10
    return-void

    .line 111
    :cond_11
    invoke-static {p1}, Lcom/mediatek/mom/j;->k(I)Lcom/mediatek/mom/j$a;

    move-result-object v0

    .line 112
    if-nez v0, :cond_34

    .line 113
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRecordHelper() failed with identity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit v6

    goto :goto_10

    .line 126
    :catchall_31
    move-exception v0

    monitor-exit v6
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0

    .line 116
    :cond_34
    :try_start_34
    new-instance v1, Lcom/mediatek/mom/x;

    invoke-direct {v1, v0}, Lcom/mediatek/mom/x;-><init>(Lcom/mediatek/mom/j$a;)V

    .line 117
    new-instance v0, Lcom/mediatek/mom/w;

    sget-object v2, Lcom/mediatek/mom/v;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/mom/v;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/mediatek/mom/v;->getUserManagerService()Landroid/os/IUserManager;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/mom/v;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/w;-><init>(Lcom/mediatek/mom/x;Landroid/content/Context;Landroid/os/Handler;Landroid/os/IUserManager;Landroid/content/pm/IPackageManager;)V

    .line 123
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mediatek/mom/x;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v0}, Lcom/mediatek/mom/w;->C()V

    .line 125
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ReceiverRecordHelper for identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mom/x;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v6
    :try_end_77
    .catchall {:try_start_34 .. :try_end_77} :catchall_31

    goto :goto_10
.end method

.method public static final a(Landroid/content/Context;Landroid/os/Handler;)Lcom/mediatek/mom/ControllerBase;
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/mediatek/mom/v;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/mom/v;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    .line 77
    :cond_b
    sget-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    .prologue
    .line 363
    const/4 v1, 0x1

    .line 364
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 365
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 366
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 367
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 368
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 369
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/mom/w;->h(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 370
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Identity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " denied "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at User("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .line 376
    :goto_6d
    monitor-exit v2

    .line 378
    return v0

    .line 376
    :catchall_6f
    move-exception v0

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_4 .. :try_end_71} :catchall_6f

    throw v0

    :cond_72
    move v0, v1

    goto :goto_6d
.end method

.method private d(IZ)V
    .registers 7

    .prologue
    .line 260
    iget-object v1, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v1

    .line 261
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 263
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/w;->f(IZ)V

    goto :goto_d

    .line 266
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 267
    return-void
.end method


# virtual methods
.method public H(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 271
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 272
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 274
    invoke-virtual {v0, v1}, Lcom/mediatek/mom/w;->H(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Z)V
    .registers 9

    .prologue
    .line 289
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 290
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 291
    const-string v2, "ReceiverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBootReceiverEnabledSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 295
    if-eqz v0, :cond_74

    .line 296
    invoke-virtual {v0, v1, p2, p3}, Lcom/mediatek/mom/w;->b(ILjava/lang/String;Z)Z

    move-result v0

    .line 297
    if-nez v0, :cond_74

    .line 298
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setBootReceiverEnabledSetting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_74
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 329
    sget-boolean v0, Lcom/mediatek/mom/v;->av:Z

    if-nez v0, :cond_5

    .line 360
    :cond_4
    :goto_4
    return-void

    .line 332
    :cond_5
    if-nez p1, :cond_f

    .line 333
    const-string v0, "ReceiverController"

    const-string v1, "filterReceiver() ignored with null action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 336
    :cond_f
    if-eqz p2, :cond_4

    .line 339
    invoke-virtual {p0, p3}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 340
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterReceiver() ignored with invalid userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 345
    :cond_30
    invoke-static {p1}, Lcom/mediatek/common/mom/BootReceiverPolicy;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 348
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 350
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3a

    .line 352
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 353
    invoke-direct {p0, p1, p3, v0}, Lcom/mediatek/mom/v;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3a
.end method

.method public clearAllSettings()Z
    .registers 3

    .prologue
    .line 324
    const-string v0, "ReceiverController"

    const-string v1, "clearAllSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 317
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPackageSettings("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p1, :cond_19

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 254
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/mediatek/mom/v;->d(IZ)V

    goto :goto_6

    .line 257
    :cond_19
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$a;)V
    .registers 4

    .prologue
    .line 131
    const-string v0, "ReceiverController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public f(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 279
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 280
    const-string v2, "ReceiverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBootReceiverEnabledSettings() at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 283
    if-eqz v0, :cond_3b

    .line 284
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->g(ILjava/util/List;)V

    .line 286
    :cond_3b
    return-void
.end method

.method public f(ILjava/lang/String;)Z
    .registers 8

    .prologue
    .line 304
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 305
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 306
    const-string v2, "ReceiverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBootReceiverEnabledSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 309
    if-eqz v0, :cond_47

    .line 310
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->h(ILjava/lang/String;)Z

    move-result v0

    .line 312
    :goto_46
    return v0

    :cond_47
    const/4 v0, 0x1

    goto :goto_46
.end method

.method public l(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 97
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMontor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/v;->av:Z

    .line 99
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 102
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMontor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/v;->av:Z

    .line 104
    return-void
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .registers 10

    .prologue
    .line 142
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 144
    packed-switch p3, :pswitch_data_1c8

    .line 209
    :goto_2f
    return-void

    .line 146
    :pswitch_30
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACKAGE_ADDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 148
    :try_start_5b
    invoke-static {p2}, Lcom/mediatek/mom/j;->c(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-static {v0}, Lcom/mediatek/mom/j;->e(I)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 150
    const-string v3, "ReceiverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRecordHelper("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, v0}, Lcom/mediatek/mom/v;->G(I)V

    .line 154
    :cond_86
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    :cond_90
    :goto_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 156
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 157
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->g(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 158
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->j(ILjava/lang/String;)V

    goto :goto_90

    .line 161
    :catchall_ac
    move-exception v0

    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_5b .. :try_end_ae} :catchall_ac

    throw v0

    :cond_af
    :try_start_af
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ac

    goto/16 :goto_2f

    .line 164
    :pswitch_b2
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACKAGE_REMOVED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 167
    :try_start_dd
    invoke-static {p2}, Lcom/mediatek/mom/j;->c(Ljava/lang/String;)I

    move-result v3

    .line 169
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 170
    :goto_eb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 171
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 172
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->k(ILjava/lang/String;)V

    goto :goto_eb

    .line 182
    :catchall_101
    move-exception v0

    monitor-exit v2
    :try_end_103
    .catchall {:try_start_dd .. :try_end_103} :catchall_101

    throw v0

    .line 174
    :cond_104
    :try_start_104
    invoke-static {v3}, Lcom/mediatek/mom/j;->e(I)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 175
    const-string v0, "ReceiverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninitReceiverCache("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 178
    if-eqz v0, :cond_145

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/w;->J(I)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 179
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_145
    monitor-exit v2
    :try_end_146
    .catchall {:try_start_104 .. :try_end_146} :catchall_101

    goto/16 :goto_2f

    .line 185
    :pswitch_148
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACKAGE_UPDATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 188
    :try_start_163
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    :goto_16d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 190
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 191
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->g(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18c

    .line 193
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->i(ILjava/lang/String;)V

    goto :goto_16d

    .line 198
    :catchall_189
    move-exception v0

    monitor-exit v2
    :try_end_18b
    .catchall {:try_start_163 .. :try_end_18b} :catchall_189

    throw v0

    .line 195
    :cond_18c
    :try_start_18c
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->k(ILjava/lang/String;)V

    goto :goto_16d

    .line 198
    :cond_190
    monitor-exit v2
    :try_end_191
    .catchall {:try_start_18c .. :try_end_191} :catchall_189

    goto/16 :goto_2f

    .line 201
    :pswitch_193
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE_EXT_AVAILABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 204
    :pswitch_1ad
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE_EXT_UNAVAILABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 144
    nop

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_30
        :pswitch_b2
        :pswitch_148
        :pswitch_193
        :pswitch_1ad
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .registers 7

    .prologue
    .line 213
    packed-switch p2, :pswitch_data_c6

    .line 247
    :cond_3
    :goto_3
    return-void

    .line 215
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_SWITCHED: Update cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/v;->d(IZ)V

    goto :goto_3

    .line 221
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_ADDED: Init cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v1

    .line 224
    :try_start_54
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 225
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 226
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 227
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/w;->I(I)V

    goto :goto_5e

    .line 229
    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_54 .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_74

    goto :goto_3

    .line 233
    :pswitch_79
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_REMOVED: Remove cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v1

    .line 236
    :try_start_a0
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 237
    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 238
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 239
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/w;->L(I)V

    goto :goto_aa

    .line 241
    :catchall_c0
    move-exception v0

    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_a0 .. :try_end_c2} :catchall_c0

    throw v0

    :cond_c3
    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c0

    goto/16 :goto_3

    .line 213
    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_79
        :pswitch_4
    .end packed-switch
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/mediatek/mom/v;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/v;->g:Landroid/content/pm/IPackageManager;

    .line 137
    invoke-static {}, Lcom/mediatek/mom/v;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/v;->W:Landroid/app/IActivityManager;

    .line 138
    return-void
.end method
