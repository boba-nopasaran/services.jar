.class Lcom/android/server/statusbar/StatusBarManagerService$1;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/statusbar/StatusBarManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNotificationLightOn:Z

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buzzBeepBlinked()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 131
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->buzzBeepBlinked()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 135
    :cond_11
    :goto_11
    return-void

    .line 132
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public notificationLightOff()V
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->mNotificationLightOn:Z

    if-eqz v0, :cond_18

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->mNotificationLightOn:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 154
    :try_start_f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->notificationLightOff()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    .line 159
    :cond_18
    :goto_18
    return-void

    .line 155
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public notificationLightPulse(III)V
    .registers 5
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->mNotificationLightOn:Z

    .line 140
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 142
    :try_start_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->notificationLightPulse(III)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 146
    :cond_14
    :goto_14
    return-void

    .line 143
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/server/notification/NotificationDelegate;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # setter for: Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;
    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;

    .line 125
    return-void
.end method

.method public showScreenPinningRequest()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 165
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 169
    :cond_11
    :goto_11
    return-void

    .line 166
    :catch_12
    move-exception v0

    goto :goto_11
.end method
