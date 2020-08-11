.class Lcom/android/server/statusbar/StatusBarManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 811
    :cond_14
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/statusbar/StatusBarManagerService;->dmEnable(Z)I
    invoke-static {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->access$400(Lcom/android/server/statusbar/StatusBarManagerService;Z)I

    .line 816
    :cond_1a
    :goto_1a
    return-void

    .line 812
    :cond_1b
    const-string v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 814
    :cond_2b
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/statusbar/StatusBarManagerService;->dmEnable(Z)I
    invoke-static {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->access$400(Lcom/android/server/statusbar/StatusBarManagerService;Z)I

    goto :goto_1a
.end method
