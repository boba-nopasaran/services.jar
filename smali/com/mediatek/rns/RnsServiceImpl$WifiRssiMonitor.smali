.class Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;
.super Landroid/os/AsyncTask;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiRssiMonitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 6

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1467
    const-wide/16 v2, 0xa

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1471
    :goto_a
    return-void

    .line 1468
    :catch_b
    move-exception v0

    .line 1469
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_a
.end method

.method private checkWifi()V
    .registers 3

    .prologue
    .line 1480
    const-string v0, "RnsServiceImpl"

    const-string v1, "checkWifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1463
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;->checkWifi()V

    .line 1476
    const/4 v0, 0x0

    return-object v0
.end method
