.class final Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$4;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$300(Landroid/content/Context;)V

    .line 293
    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 294
    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 296
    :cond_f
    return-void
.end method
