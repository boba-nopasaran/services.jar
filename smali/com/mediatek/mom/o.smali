.class final Lcom/mediatek/mom/o;
.super Lcom/mediatek/mom/ListenerTriggerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 6

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public triggerListenerFunc()I
    .registers 8

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/mom/o;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/mom/o;->getFunc()Landroid/os/IBinder;

    move-result-object v2

    .line 66
    const-string v3, "notificationPkg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v4, "NotificationListenerTrigger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "triggerListenerFunc() packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "notificationID"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v4, "NotificationListenerTrigger"

    const-string v5, "[MoMS >> MoMA] onNotificationBlocked()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v2}, Lcom/mediatek/common/mom/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/INotificationListener;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_69

    .line 76
    :try_start_44
    invoke-interface {v2, v3, v1}, Lcom/mediatek/common/mom/INotificationListener;->onNotificationBlocked(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_60

    .line 84
    :goto_47
    const-string v1, "NotificationListenerTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MoMS << MoMA] onNotificationBlocked() returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v0

    .line 77
    :catch_60
    move-exception v1

    .line 78
    const-string v2, "NotificationListenerTrigger"

    const-string v3, "onNotificationBlocked() failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 81
    :cond_69
    const-string v1, "NotificationListenerTrigger"

    const-string v2, "Ignore null listener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method