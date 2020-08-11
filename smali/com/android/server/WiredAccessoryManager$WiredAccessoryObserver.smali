.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 3

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 435
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 436
    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x10

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 476
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v11, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$900(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 481
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v4, 0x2

    const/16 v5, 0x20

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 482
    .local v0, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 483
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_25
    :goto_25
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v6, "usb_audio"

    const/4 v7, 0x4

    const/16 v8, 0x8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 491
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 492
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :goto_3a
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v7, "hdmi_audio"

    move-object v5, v0

    move-object v6, p0

    move v8, v12

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 506
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 507
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :goto_4e
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "camera"

    move-object v1, p0

    move v4, v9

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 520
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 521
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :goto_61
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "back-car"

    move-object v1, p0

    move v4, v9

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 527
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 528
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :goto_74
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "sos-switch"

    move-object v1, p0

    move v4, v9

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 535
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 536
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :goto_87
    return-object v11

    .line 485
    :cond_88
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have wired headset support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 494
    :cond_92
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have usb audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 509
    :cond_9c
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v7, "hdmi"

    move-object v5, v0

    move-object v6, p0

    move v8, v12

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 510
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 511
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 513
    :cond_b1
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have HDMI audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 523
    :cond_bb
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have camera dectect support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 530
    :cond_c5
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have car back dectect support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 538
    :cond_cf
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have sos switch dectect support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_44

    .line 562
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 563
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 565
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "back-car"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sos-switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 568
    :cond_3f
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # invokes: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v2, p2, p3}, Lcom/android/server/WiredAccessoryManager;->access$1000(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    .line 576
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_44
    :goto_44
    return-void

    .line 572
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_45
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$1100(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    # invokes: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1000(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    goto :goto_44

    .line 561
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method init()V
    .registers 12

    .prologue
    .line 439
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/WiredAccessoryManager;->access$800(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 440
    :try_start_7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v9, "init()"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 443
    .local v0, "buffer":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_ac

    .line 444
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_9e

    .line 447
    .local v6, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_start_25
    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 448
    .local v3, "file":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v7, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 449
    .local v5, "len":I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 450
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 452
    .local v1, "curState":I
    if-gtz v1, :cond_70

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "camera"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_70

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "back-car"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_70

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "sos-switch"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 455
    :cond_70
    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_7b} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7b} :catch_a1
    .catchall {:try_start_25 .. :try_end_7b} :catchall_9e

    .line 443
    .end local v1    # "curState":I
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 457
    :catch_7e
    move-exception v2

    .line 458
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_7f
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found while attempting to determine initial switch state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 464
    .end local v0    # "buffer":[C
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "i":I
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catchall_9e
    move-exception v7

    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_7f .. :try_end_a0} :catchall_9e

    throw v7

    .line 460
    .restart local v0    # "buffer":[C
    .restart local v4    # "i":I
    .restart local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_a1
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a2
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    .line 464
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_ac
    monitor-exit v8
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_9e

    .line 469
    const/4 v4, 0x0

    :goto_ae
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_db

    .line 470
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 471
    .restart local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEVPATH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    .line 469
    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    .line 473
    .end local v6    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_db
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 546
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :try_start_1e
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "devPath":Ljava/lang/String;
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "name":Ljava/lang/String;
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 552
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/WiredAccessoryManager;->access$800(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_3b} :catch_43

    .line 553
    :try_start_3b
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 554
    monitor-exit v5

    .line 558
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :goto_3f
    return-void

    .line 554
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "state":I
    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    :try_start_42
    throw v4
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_43} :catch_43

    .line 555
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :catch_43
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
