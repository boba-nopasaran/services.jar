.class Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityDisplay"
.end annotation


# instance fields
.field private final mBackFloatingStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field mDisplayId:I

.field mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mFrontFloatingStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 3

    .prologue
    .line 4625
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4613
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 4617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mFrontFloatingStacks:Ljava/util/ArrayList;

    .line 4622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mBackFloatingStacks:Ljava/util/ArrayList;

    .line 4626
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 5
    .param p2, "displayId"    # I

    .prologue
    .line 4630
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4613
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 4617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mFrontFloatingStacks:Ljava/util/ArrayList;

    .line 4622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mBackFloatingStacks:Ljava/util/ArrayList;

    .line 4631
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 4632
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_2a

    .line 4636
    :goto_29
    return-void

    .line 4635
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->init(Landroid/view/Display;)V

    goto :goto_29
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mFrontFloatingStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mBackFloatingStacks:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method attachActivities(Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 4645
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_28

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachActivities: attaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4649
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFloatingStack(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4650
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mFrontFloatingStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4653
    :cond_42
    return-void
.end method

.method detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 4656
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_28

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachActivitiesLocked: detaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4660
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFloatingStack(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 4661
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mFrontFloatingStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4662
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mBackFloatingStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4665
    :cond_47
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Point;

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 4669
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 4670
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 4671
    return-void
.end method

.method hasVisibleBehindActivity()Z
    .registers 2

    .prologue
    .line 4678
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method init(Landroid/view/Display;)V
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 4639
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 4640
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    .line 4641
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 4642
    return-void
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4674
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    .line 4675
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numFrontFloatStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mFrontFloatingStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numBackFloatStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mBackFloatingStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
