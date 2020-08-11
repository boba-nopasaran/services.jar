.class Lcom/android/server/power/Notifier$3;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleWakefulnessChange(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .registers 3

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$3;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 333
    const/4 v0, 0x2

    .line 334
    .local v0, "why":I
    iget v1, p0, Lcom/android/server/power/Notifier$3;->val$reason:I

    sparse-switch v1, :sswitch_data_3a

    .line 345
    :goto_7
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 349
    iget-object v1, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->goingToSleep(I)V

    .line 350
    return-void

    .line 336
    :sswitch_34
    const/4 v0, 0x1

    .line 337
    goto :goto_7

    .line 339
    :sswitch_36
    const/4 v0, 0x3

    .line 340
    goto :goto_7

    .line 342
    :sswitch_38
    const/4 v0, 0x4

    goto :goto_7

    .line 334
    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_34
        0x2 -> :sswitch_36
        0x8 -> :sswitch_38
    .end sparse-switch
.end method
