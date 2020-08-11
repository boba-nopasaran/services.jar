.class Lcom/mediatek/mom/n;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static c:Lcom/mediatek/mom/ControllerBase;


# instance fields
.field private V:Landroid/app/INotificationManager;

.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/n;->c:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/n;->a:Ljava/util/HashSet;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/n;->b:Z

    .line 74
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/ControllerBase;
    .registers 3

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/mom/n;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_15

    .line 91
    new-instance v0, Lcom/mediatek/mom/n;

    invoke-direct {v0}, Lcom/mediatek/mom/n;-><init>()V

    sput-object v0, Lcom/mediatek/mom/n;->c:Lcom/mediatek/mom/ControllerBase;

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Create MobileManagerController: NotificationController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 94
    :cond_15
    sget-object v0, Lcom/mediatek/mom/n;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private getService()Landroid/app/INotificationManager;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/mom/n;->V:Landroid/app/INotificationManager;

    if-eqz v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/mediatek/mom/n;->V:Landroid/app/INotificationManager;

    .line 81
    :goto_6
    return-object v0

    .line 80
    :cond_7
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/n;->V:Landroid/app/INotificationManager;

    .line 81
    iget-object v0, p0, Lcom/mediatek/mom/n;->V:Landroid/app/INotificationManager;

    goto :goto_6
.end method

.method private s()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/mom/n;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 86
    return-void
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 130
    :try_start_4
    invoke-direct {p0}, Lcom/mediatek/mom/n;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 132
    const-string v1, "MoMS.NotificationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelNotification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v0, :cond_30

    .line 136
    const-string v1, "MoMS.NotificationController"

    const-string v4, "cancelNotification in NMS"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/INotificationManager;->removeAllNotifications(Ljava/lang/String;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_30} :catch_34
    .catchall {:try_start_4 .. :try_end_30} :catchall_40

    .line 143
    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    :goto_33
    return-void

    .line 140
    :catch_34
    move-exception v0

    .line 141
    :try_start_35
    const-string v0, "NotificationController"

    const-string v1, "cancelNotification() faild!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_40

    .line 143
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_40
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public clearAllSettings()Z
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/mom/n;->s()V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/n;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationEnabledSetting(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/mom/n;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    .line 162
    :goto_9
    const-string v2, "MoMS.NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications are "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_32

    const-string v1, "en"

    :goto_1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "abled for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v0

    .line 160
    :cond_30
    const/4 v0, 0x0

    goto :goto_9

    .line 162
    :cond_32
    const-string v1, "dis"

    goto :goto_1a
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .registers 7

    .prologue
    .line 187
    const-string v0, "MoMS.NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    packed-switch p3, :pswitch_data_2c

    .line 200
    :goto_25
    :pswitch_25
    return-void

    .line 195
    :pswitch_26
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/mom/n;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    goto :goto_25

    .line 189
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_25
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .registers 3

    .prologue
    .line 203
    return-void
.end method

.method public setNotificationCache(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/NotificationCacheRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/mediatek/mom/n;->s()V

    .line 170
    if-eqz p1, :cond_1f

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/NotificationCacheRecord;

    .line 176
    if-eqz v0, :cond_9

    .line 177
    iget-object v2, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/mom/n;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    goto :goto_9

    .line 181
    :cond_1f
    const-string v0, "MoMS.NotificationController"

    const-string v1, "setNotificationCache to null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_26
    return-void
.end method

.method public setNotificationEnabledSetting(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 150
    const-string v1, "MoMS.NotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_28

    const-string v0, "en"

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p2, :cond_2b

    .line 153
    iget-object v0, p0, Lcom/mediatek/mom/n;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    :goto_27
    return-void

    .line 150
    :cond_28
    const-string v0, "dis"

    goto :goto_b

    .line 155
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/mom/n;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_27
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/n;->b:Z

    .line 116
    invoke-direct {p0}, Lcom/mediatek/mom/n;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_11

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null INotificationManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_11
    return-void
.end method
