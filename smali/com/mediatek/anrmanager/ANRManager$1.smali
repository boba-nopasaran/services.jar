.class Lcom/mediatek/anrmanager/ANRManager$1;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/anrmanager/ANRManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method constructor <init>(Lcom/mediatek/anrmanager/ANRManager;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$1;->k:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 322
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
