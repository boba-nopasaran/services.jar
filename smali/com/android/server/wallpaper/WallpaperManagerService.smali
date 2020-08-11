.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BG_RELEASE:Ljava/lang/String; = "ACTION_BG_RELEASE"

.field static final BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field static final DEBUG:Z = true

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final MOUNT_SDCARD:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field private static final MSG_BIND_WP:I = 0x2775

.field private static final SMARTBOOK_WALLPAPER:Ljava/lang/String; = "smartbook_wallpaper"

.field private static final SMARTBOOK_WALLPAPER_INFO:Ljava/lang/String; = "smartbook_wallpaper_info.xml"

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static mCurrentComponetName:Landroid/content/ComponentName;

.field static mIsIPOBoot:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field private mExpectedLiving:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHaveUsedSmartBook:Z

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field private mLastIntent:Landroid/content/Intent;

.field private mLastPhoneWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private mLastSmartBookWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mPhoneWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartBookPlug:Z

.field private mSmartBookWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z

.field private mWallpaperFileName:Ljava/lang/String;

.field private mWallpaperInfoFileName:Ljava/lang/String;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsIPOBoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 107
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 1595
    iput-boolean v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExpectedLiving:Z

    .line 1599
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    .line 1648
    const-string v0, "wallpaper"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 1649
    const-string v0, "wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 1656
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    .line 1657
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    .line 516
    const-string v0, "WallpaperManagerService"

    const-string v1, "WallpaperService startup"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 518
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 520
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 522
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 523
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 524
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 525
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 526
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 527
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHaveUsedSmartBook:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHaveUsedSmartBook:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->dynimicSwitchingWallpaper(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookPlug:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookPlug:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExpectedLiving:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateSettingsComponentName()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isGmoRamOptimizeSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSmartBookSupport()Z

    move-result v0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 1201
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1204
    :cond_2f
    return-void
.end method

.method private doVisibilityChanged(Z)V
    .registers 5
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x2775

    .line 1627
    if-eqz p1, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExpectedLiving:Z

    if-nez v0, :cond_2d

    .line 1628
    const-string v0, "WallpaperManagerService"

    const-string v1, "Restart current wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1630
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1631
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1634
    :cond_2d
    return-void
.end method

.method private dumpSmartBook()V
    .registers 5

    .prologue
    .line 1710
    const-string v1, "WallpaperManagerService"

    const-string v2, "========== Smart book dump start ============ "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plug in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookPlug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWallpaperFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWallpaperInfoFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1715
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_e1

    .line 1716
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_9d

    .line 1718
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_9d
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_bf

    .line 1721
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextWallpaperComponent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_bf
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v1, :cond_e1

    .line 1724
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WallpaperFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_e1
    const-string v1, "WallpaperManagerService"

    const-string v2, "========== Smart book dump end   ============ "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    return-void
.end method

.method private dynimicSwitchingWallpaper(Z)V
    .registers 5
    .param p1, "isSmartBookPlug"    # Z

    .prologue
    .line 1660
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1661
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopWatchingWallpaper()V

    .line 1663
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switching(Z)V

    .line 1665
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1667
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->startWatchingWallpaper()V

    .line 1668
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    .line 1670
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1671
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1672
    return-void

    .line 1668
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 1314
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1318
    .end local p3    # "defValue":I
    :goto_7
    return p3

    .restart local p3    # "defValue":I
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_7
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 759
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 760
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 761
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 762
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 763
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .registers 5

    .prologue
    .line 1416
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1417
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1418
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 530
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isGmoRamOptimizeSupport()Z
    .registers 3

    .prologue
    .line 1757
    const-string v0, "ro.mtk_gmo_rom_optimize"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSmartBookSupport()Z
    .registers 3

    .prologue
    .line 1753
    const-string v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadSettingsLocked(I)V
    .registers 21
    .param p1, "userId"    # I

    .prologue
    .line 1322
    const-string v14, "WallpaperManagerService"

    const-string v15, "loadSettingsLocked"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    .line 1325
    .local v6, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 1326
    .local v8, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    .line 1327
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_19

    .line 1329
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 1331
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1332
    .local v13, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v13, :cond_39

    .line 1333
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1334
    .restart local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1336
    :cond_39
    const/4 v10, 0x0

    .line 1338
    .local v10, "success":Z
    :try_start_3a
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3f} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_3f} :catch_193
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3f} :catch_1b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_3f} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_201
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_3f} :catch_226

    .line 1339
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_3f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1340
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v7, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1344
    :cond_47
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 1345
    .local v12, "type":I
    const/4 v14, 0x2

    if-ne v12, v14, :cond_154

    .line 1346
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1347
    .local v11, "tag":Ljava/lang/String;
    const-string v14, "wp"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_154

    .line 1348
    const/4 v14, 0x0

    const-string v15, "width"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1349
    const/4 v14, 0x0

    const-string v15, "height"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1351
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v15, "paddingLeft"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v15, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Landroid/graphics/Rect;->left:I

    .line 1352
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v15, "paddingTop"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v15, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Landroid/graphics/Rect;->top:I

    .line 1353
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v15, "paddingRight"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v15, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Landroid/graphics/Rect;->right:I

    .line 1354
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string v15, "paddingBottom"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v15, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    .line 1355
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1356
    const/4 v14, 0x0

    const-string v15, "component"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1357
    .local v3, "comp":Ljava/lang/String;
    if-eqz v3, :cond_187

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    :goto_ca
    iput-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1360
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_de

    const-string v14, "android"

    iget-object v15, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e4

    .line 1363
    :cond_de
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1367
    :cond_e4
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWidth:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mHeight:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mName:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mNextWallpaperComponent:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_154} :catch_25f
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_154} :catch_25b
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_154} :catch_257
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_154} :catch_254
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_154} :catch_251
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_154} :catch_24e

    .line 1375
    .end local v3    # "comp":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    :cond_154
    const/4 v14, 0x1

    if-ne v12, v14, :cond_47

    .line 1376
    const/4 v10, 0x1

    move-object v8, v9

    .line 1391
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .end local v12    # "type":I
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :goto_159
    if-eqz v8, :cond_15e

    .line 1392
    :try_start_15b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_24b

    .line 1398
    :cond_15e
    :goto_15e
    if-nez v10, :cond_176

    .line 1399
    const/4 v14, -0x1

    iput v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1400
    const/4 v14, -0x1

    iput v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1401
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Rect;->set(IIII)V

    .line 1402
    const-string v14, ""

    iput-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1406
    :cond_176
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v2

    .line 1407
    .local v2, "baseSize":I
    iget v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ge v14, v2, :cond_180

    .line 1408
    iput v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1410
    :cond_180
    iget v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v14, v2, :cond_186

    .line 1411
    iput v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1413
    :cond_186
    return-void

    .line 1357
    .end local v2    # "baseSize":I
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "comp":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_187
    const/4 v14, 0x0

    goto/16 :goto_ca

    .line 1377
    .end local v3    # "comp":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_18a
    move-exception v4

    .line 1378
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_18b
    const-string v14, "WallpaperManagerService"

    const-string v15, "no current wallpaper -- first boot?"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 1379
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_193
    move-exception v4

    .line 1380
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_194
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 1381
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1b7
    move-exception v4

    .line 1382
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_1b8
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 1383
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1dc
    move-exception v4

    .line 1384
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1dd
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 1385
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_201
    move-exception v4

    .line 1386
    .local v4, "e":Ljava/io/IOException;
    :goto_202
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 1387
    .end local v4    # "e":Ljava/io/IOException;
    :catch_226
    move-exception v4

    .line 1388
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_227
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 1394
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_24b
    move-exception v14

    goto/16 :goto_15e

    .line 1387
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_24e
    move-exception v4

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_227

    .line 1385
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_251
    move-exception v4

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_202

    .line 1383
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_254
    move-exception v4

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_1dd

    .line 1381
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_257
    move-exception v4

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1b8

    .line 1379
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_25b
    move-exception v4

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_194

    .line 1377
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_25f
    move-exception v4

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_18b
.end method

.method private makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 1207
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1298
    const-string v4, "WallpaperManagerService"

    const-string v5, "migrateFromOld.."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1302
    new-instance v1, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1303
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1304
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateFromOld..oldWallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_4c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 1307
    new-instance v0, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1308
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1309
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateFromOld..oldInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_82
    return-void
.end method

.method private modifyWallpaperAdj(Z)V
    .registers 5
    .param p1, "isVisible"    # Z

    .prologue
    .line 1638
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->updateWallpaperState(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1642
    :goto_7
    return-void

    .line 1639
    :catch_8
    move-exception v0

    .line 1640
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Modify wallpaper\'s ADJ, catch RemoteException!!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1184
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1185
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_1b

    .line 1187
    :try_start_b
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_36

    .line 1185
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1194
    :cond_1b
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1195
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1197
    return-void

    .line 1188
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_36
    move-exception v3

    goto :goto_18
.end method

.method private saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 10
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1251
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1252
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1254
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_c5

    .line 1255
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1256
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1257
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1259
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v5, :cond_56

    .line 1263
    const/4 v5, 0x0

    const-string v6, "paddingLeft"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    :cond_56
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_6a

    .line 1266
    const/4 v5, 0x0

    const-string v6, "paddingTop"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    :cond_6a
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v5, :cond_7e

    .line 1269
    const/4 v5, 0x0

    const-string v6, "paddingRight"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    :cond_7e
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v5, :cond_92

    .line 1272
    const/4 v5, 0x0

    const-string v6, "paddingBottom"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1274
    :cond_92
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_b4

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    .line 1277
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1280
    :cond_b4
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1282
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1283
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1284
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_c3} :catch_d1

    move-object v3, v4

    .line 1295
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_c4
    return-void

    .line 1285
    :catch_c5
    move-exception v0

    .line 1287
    .local v0, "e":Ljava/io/IOException;
    :goto_c6
    if-eqz v3, :cond_cb

    .line 1288
    :try_start_c8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cf

    .line 1293
    :cond_cb
    :goto_cb
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_c4

    .line 1290
    :catch_cf
    move-exception v5

    goto :goto_cb

    .line 1285
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_d1
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_c6
.end method

.method private startWatchingWallpaper()V
    .registers 4

    .prologue
    .line 1675
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1676
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_15

    .line 1677
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1679
    :cond_15
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1680
    return-void
.end method

.method private stopWatchingWallpaper()V
    .registers 4

    .prologue
    .line 1683
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1684
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_13

    .line 1685
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1687
    :cond_13
    return-void
.end method

.method private switching(Z)V
    .registers 3
    .param p1, "isSmartBookPlug"    # Z

    .prologue
    .line 1690
    if-eqz p1, :cond_13

    .line 1693
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    .line 1695
    const-string v0, "smartbook_wallpaper"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 1696
    const-string v0, "smartbook_wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 1697
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 1707
    :goto_12
    return-void

    .line 1701
    :cond_13
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    .line 1703
    const-string v0, "wallpaper"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 1704
    const-string v0, "wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 1705
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_12
.end method

.method private updateSettingsComponentName()V
    .registers 11

    .prologue
    .line 1217
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1218
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 1219
    .local v5, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v6, 0x0

    .line 1220
    .local v6, "wallpaperInfo":Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .line 1221
    .local v1, "currentWallpaperName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1222
    .local v3, "packageName":Ljava/lang/String;
    const v4, 0x80500b4

    .line 1224
    .local v4, "resId":I
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1226
    :try_start_15
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1227
    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v7, :cond_29

    .line 1228
    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1230
    :cond_29
    monitor-exit v8
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_75

    .line 1231
    if-eqz v6, :cond_40

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 1233
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1234
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/ServiceInfo;->labelRes:I

    .line 1236
    :cond_40
    if-nez v4, :cond_78

    .line 1237
    invoke-virtual {v6, v2}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1243
    :goto_4a
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "current_wallpaper_component_name"

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v7, v8, v1, v9}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1245
    const-string v7, "WallpaperManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentWallpaperName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1247
    return-void

    .line 1230
    :catchall_75
    move-exception v7

    :try_start_76
    monitor-exit v8
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v7

    .line 1239
    :cond_78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4a
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 14
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1172
    :try_start_2
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 1181
    :cond_13
    :goto_13
    return-void

    .line 1175
    :catch_14
    move-exception v8

    .line 1176
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "WallpaperManagerService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_13

    move-object v0, p0

    move-object v1, v10

    move v2, v9

    move v3, v9

    move-object v4, p2

    move-object v5, v10

    .line 1178
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_13
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 26
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 983
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isStorageLow()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 987
    const-string v3, "WallpaperManagerService"

    const-string v4, "Storage low, fail to set wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v3, 0x0

    .line 1134
    :goto_28
    return v3

    .line 992
    :cond_29
    if-nez p2, :cond_5b

    .line 993
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_5b

    .line 994
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_42

    .line 995
    if-nez p1, :cond_5b

    .line 996
    const-string v3, "WallpaperManagerService"

    const-string v4, "bindWallpaperComponentLocked: still using default"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v3, 0x1

    goto :goto_28

    .line 1000
    :cond_42
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsIPOBoot:Z

    if-nez v3, :cond_5b

    .line 1002
    const-string v3, "WallpaperManagerService"

    const-string v4, "same wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v3, 0x1

    goto :goto_28

    .line 1009
    :cond_5b
    if-nez p1, :cond_74

    .line 1010
    :try_start_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1011
    if-nez p1, :cond_74

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 1016
    const-string v3, "WallpaperManagerService"

    const-string v4, "Using image wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_74
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v16, v0

    .line 1020
    .local v16, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    .line 1022
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    if-nez v17, :cond_ad

    .line 1024
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 1027
    :cond_ad
    const-string v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_106

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1031
    .local v12, "msg":Ljava/lang/String;
    if-eqz p3, :cond_fe

    .line 1032
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_d6} :catch_d6

    .line 1126
    .end local v12    # "msg":Ljava/lang/String;
    .end local v16    # "serviceUserId":I
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    :catch_d6
    move-exception v9

    .line 1127
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1128
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_2df

    .line 1129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1034
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v16    # "serviceUserId":I
    .restart local v17    # "si":Landroid/content/pm/ServiceInfo;
    :cond_fe
    :try_start_fe
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 1038
    .end local v12    # "msg":Ljava/lang/String;
    :cond_106
    const/16 v18, 0x0

    .line 1040
    .local v18, "wi":Landroid/app/WallpaperInfo;
    new-instance v11, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v11, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1b9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b9

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    move/from16 v0, v16

    invoke-interface {v3, v11, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v14

    .line 1047
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_136
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_16d

    .line 1048
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1049
    .local v15, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v3, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ae

    iget-object v3, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_159} :catch_d6

    move-result v3

    if-eqz v3, :cond_1ae

    .line 1052
    :try_start_15c
    new-instance v18, Landroid/app/WallpaperInfo;

    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_16d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15c .. :try_end_16d} :catch_18c
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_16d} :catch_19d
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_16d} :catch_d6

    .line 1069
    .end local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :cond_16d
    if-nez v18, :cond_1b9

    .line 1070
    :try_start_16f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1072
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_1b1

    .line 1073
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1053
    .end local v12    # "msg":Ljava/lang/String;
    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    .restart local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_18c
    move-exception v9

    .line 1054
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_195

    .line 1055
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1057
    :cond_195
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 1059
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_19d
    move-exception v9

    .line 1060
    .local v9, "e":Ljava/io/IOException;
    if-eqz p3, :cond_1a6

    .line 1061
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1063
    :cond_1a6
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 1047
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :cond_1ae
    add-int/lit8 v10, v10, 0x1

    goto :goto_136

    .line 1075
    .end local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_1b1
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 1081
    .end local v10    # "i":I
    .end local v12    # "msg":Ljava/lang/String;
    .end local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1b9
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-direct {v13, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1083
    .local v13, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1084
    const-string v3, "android.intent.extra.client_label"

    const v4, 0x104054c

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    const-string v19, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104054d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1091
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x20000001

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v11, v13, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_253

    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1096
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_24b

    .line 1097
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1099
    :cond_24b
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 1103
    .end local v12    # "msg":Ljava/lang/String;
    :cond_253
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isGmoRamOptimizeSupport()Z

    move-result v3

    if-eqz v3, :cond_280

    .line 1104
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastIntent:Landroid/content/Intent;

    .line 1105
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->setWallpaperProcess(Landroid/content/ComponentName;)V

    .line 1106
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tell ActivityManager current wallpaper process is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_280
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_299

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_299

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1113
    :cond_299
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1114
    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1115
    move-object/from16 v0, p5

    iput-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_2a7
    .catch Landroid/os/RemoteException; {:try_start_16f .. :try_end_2a7} :catch_d6

    .line 1117
    :try_start_2a7
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_2dc

    .line 1119
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1122
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_2dc
    .catch Landroid/os/RemoteException; {:try_start_2a7 .. :try_end_2dc} :catch_2e7

    .line 1134
    :cond_2dc
    :goto_2dc
    const/4 v3, 0x1

    goto/16 :goto_28

    .line 1131
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v16    # "serviceUserId":I
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    .local v9, "e":Landroid/os/RemoteException;
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_2df
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 1124
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "msg":Ljava/lang/String;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v16    # "serviceUserId":I
    .restart local v17    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :catch_2e7
    move-exception v3

    goto :goto_2dc
.end method

.method public clearWallpaper()V
    .registers 5

    .prologue
    .line 690
    const-string v0, "WallpaperManagerService"

    const-string v1, "clearWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    const/4 v0, 0x0

    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 693
    monitor-exit v1

    .line 694
    return-void

    .line 693
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1166
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1167
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1168
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .registers 16
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 698
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v8, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 699
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 700
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 702
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 704
    .local v10, "ident":J
    const/4 v6, 0x0

    .line 706
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_23
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 707
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_27} :catch_3f
    .catchall {:try_start_23 .. :try_end_27} :catchall_55

    if-eq p2, v0, :cond_2d

    .line 730
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    :goto_2c
    return-void

    .line 708
    :cond_2d
    if-eqz p1, :cond_31

    :try_start_2f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    :cond_31
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_38} :catch_3f
    .catchall {:try_start_2f .. :try_end_38} :catchall_55

    move-result v0

    if-eqz v0, :cond_41

    .line 730
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    .line 713
    :catch_3f
    move-exception v7

    .line 714
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    .line 721
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_41
    :try_start_41
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_55

    .line 723
    if-eqz p3, :cond_51

    .line 725
    const/4 v0, 0x0

    :try_start_4e
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_5a
    .catchall {:try_start_4e .. :try_end_51} :catchall_55

    .line 730
    :cond_51
    :goto_51
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    :catchall_55
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 726
    :catch_5a
    move-exception v0

    goto :goto_51
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v3, 0x0

    .line 1138
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_5a

    .line 1139
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_17

    .line 1141
    :try_start_b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_5f

    .line 1144
    :goto_13
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1146
    :cond_17
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_24

    .line 1148
    :try_start_1d
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_5d

    .line 1152
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1155
    :try_start_2b
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_50} :catch_5b

    .line 1159
    :goto_50
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1160
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1161
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1163
    :cond_5a
    return-void

    .line 1157
    :catch_5b
    move-exception v0

    goto :goto_50

    .line 1149
    :catch_5d
    move-exception v0

    goto :goto_24

    .line 1142
    :catch_5f
    move-exception v0

    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1550
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 1553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    :goto_32
    return-void

    .line 1559
    :cond_33
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1560
    :try_start_36
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_f2

    .line 1562
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1563
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1565
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1566
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1567
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1568
    const-string v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1569
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1571
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_ee

    .line 1572
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1573
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1575
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_c1

    .line 1577
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1580
    :cond_c1
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1582
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1583
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1584
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1586
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1587
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1561
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    .line 1590
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_f2
    monitor-exit v4

    goto/16 :goto_32

    .end local v1    # "i":I
    :catchall_f5
    move-exception v3

    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_36 .. :try_end_f7} :catchall_f5

    throw v3
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 535
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 537
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 538
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 540
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1c
    return-void
.end method

.method public getHeightHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 816
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 817
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    return v1

    .line 818
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 622
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_10
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_13
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 626
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 857
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 860
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 861
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 862
    .local v4, "wallpaperUserId":I
    const/16 v7, 0x3e8

    if-ne v0, v7, :cond_41

    .line 863
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 867
    :goto_f
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_4e

    .line 869
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_27

    .line 870
    :try_start_19
    const-string v7, "width"

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 871
    const-string v7, "height"

    iget v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 873
    :cond_27
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 874
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 875
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_3c} :catch_51
    .catchall {:try_start_19 .. :try_end_3c} :catchall_4e

    move-result v7

    if-nez v7, :cond_46

    .line 876
    :try_start_3f
    monitor-exit v6

    .line 883
    .end local v2    # "f":Ljava/io/File;
    :goto_40
    return-object v5

    .line 865
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_41
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4e

    move-result v4

    goto :goto_f

    .line 878
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_46
    const/high16 v7, 0x10000000

    :try_start_48
    invoke-static {v2, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4b} :catch_51
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4e

    move-result-object v5

    :try_start_4c
    monitor-exit v6

    goto :goto_40

    .line 884
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_4e
    move-exception v5

    monitor-exit v6
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_4e

    throw v5

    .line 879
    .restart local v0    # "callingUid":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaperUserId":I
    :catch_51
    move-exception v1

    .line 881
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_52
    const-string v7, "WallpaperManagerService"

    const-string v8, "Error getting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_4e

    goto :goto_40
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 5

    .prologue
    .line 888
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 889
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 890
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 891
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_19

    .line 892
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 894
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_18

    .line 895
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public getWidthHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 808
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 809
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 810
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    return v1

    .line 811
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 735
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 737
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    move-result-wide v2

    .line 739
    .local v2, "ident":J
    :try_start_7
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_50

    move-result-object v4

    .line 741
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 744
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 745
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_43

    .line 747
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 748
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 750
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_43
    if-eqz v5, :cond_1c

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 751
    const/4 v6, 0x1

    monitor-exit v7

    .line 755
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_4f
    return v6

    .line 741
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_50
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 754
    .end local v2    # "ident":J
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_15 .. :try_end_57} :catchall_55

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ident":J
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_58
    :try_start_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_55

    .line 755
    const/4 v6, 0x0

    goto :goto_4f
.end method

.method public isStorageLow()Z
    .registers 4

    .prologue
    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_13

    .line 973
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isStorageLow()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 978
    :goto_a
    return v1

    .line 975
    :catch_b
    move-exception v0

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "isStorageLow(), load exception.."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method onRemoveUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 644
    const/4 v2, 0x1

    if-ge p1, v2, :cond_4

    .line 652
    :goto_3
    return-void

    .line 645
    :cond_4
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 646
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onStoppingUser(I)V

    .line 647
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 649
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 651
    monitor-exit v3

    goto :goto_3

    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method onStoppingUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 630
    const/4 v1, 0x1

    if-ge p1, v1, :cond_4

    .line 641
    :goto_3
    return-void

    .line 631
    :cond_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 632
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 633
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_22

    .line 634
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1d

    .line 635
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 636
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 638
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 640
    :cond_22
    monitor-exit v2

    goto :goto_3

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public onVisibilityChanged(Z)V
    .registers 5
    .param p1, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1616
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Visibility changed from WMS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isGmoRamOptimizeSupport()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1618
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    if-eq v0, p1, :cond_2e

    .line 1619
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    .line 1620
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->modifyWallpaperAdj(Z)V

    .line 1621
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->doVisibilityChanged(Z)V

    .line 1624
    :cond_2e
    return-void
.end method

.method public resetWallpaper()V
    .registers 6

    .prologue
    .line 1736
    const-string v3, "WallpaperManagerService"

    const-string v4, "reset wallpaper "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1738
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v3, :cond_1a

    .line 1739
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1741
    :cond_1a
    new-instance v1, Ljava/io/File;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1742
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1743
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1745
    :cond_30
    new-instance v2, Ljava/io/File;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_info.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1746
    .local v2, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1747
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1749
    :cond_46
    return-void
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 23
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1475
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_14b

    const-string v17, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14b

    .line 1476
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1478
    .local v14, "resName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1479
    .local v10, "pkg":Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1480
    .local v5, "colon":I
    if-lez v5, :cond_47

    .line 1481
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1484
    :cond_47
    const/4 v9, 0x0

    .line 1485
    .local v9, "ident":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1486
    .local v15, "slash":I
    if-lez v15, :cond_5a

    .line 1487
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1490
    :cond_5a
    const/16 v16, 0x0

    .line 1491
    .local v16, "type":Ljava/lang/String;
    if-lez v5, :cond_72

    if-lez v15, :cond_72

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_72

    .line 1492
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1495
    :cond_72
    if-eqz v10, :cond_14b

    if-eqz v9, :cond_14b

    if-eqz v16, :cond_14b

    .line 1496
    const/4 v13, -0x1

    .line 1497
    .local v13, "resId":I
    const/4 v12, 0x0

    .line 1498
    .local v12, "res":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1500
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1501
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1502
    .local v11, "r":Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1503
    if-nez v13, :cond_e1

    .line 1504
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_d1} :catch_1f1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_d1} :catch_17c
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_d1} :catch_1a7
    .catchall {:try_start_7b .. :try_end_d1} :catchall_1c3

    .line 1506
    const/16 v17, 0x0

    .line 1531
    if-eqz v12, :cond_d8

    .line 1533
    :try_start_d5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_1d2

    .line 1536
    :cond_d8
    :goto_d8
    if-eqz v7, :cond_e0

    .line 1537
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1539
    :try_start_dd
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_1d5

    .line 1545
    .end local v4    # "c":Landroid/content/Context;
    .end local v5    # "colon":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_e0
    :goto_e0
    return v17

    .line 1509
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_e1
    :try_start_e1
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 1510
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_fa

    .line 1511
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1513
    :cond_fa
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_107
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e1 .. :try_end_107} :catch_1f1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e1 .. :try_end_107} :catch_17c
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_107} :catch_1a7
    .catchall {:try_start_e1 .. :try_end_107} :catchall_1c3

    .line 1515
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_10a
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 1517
    .local v3, "buffer":[B
    :goto_10e
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "amt":I
    if-lez v2, :cond_14e

    .line 1518
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10a .. :try_end_11b} :catch_11c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10a .. :try_end_11b} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_11b} :catch_1eb
    .catchall {:try_start_10a .. :try_end_11b} :catchall_1e8

    goto :goto_10e

    .line 1524
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    :catch_11c
    move-exception v6

    move-object v7, v8

    .line 1525
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_11e
    :try_start_11e
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_11e .. :try_end_13e} :catchall_1c3

    .line 1531
    if-eqz v12, :cond_143

    .line 1533
    :try_start_140
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_1da

    .line 1536
    :cond_143
    :goto_143
    if-eqz v7, :cond_14b

    .line 1537
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1539
    :try_start_148
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_1dd

    .line 1545
    .end local v5    # "colon":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_14b
    :goto_14b
    const/16 v17, 0x0

    goto :goto_e0

    .line 1522
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_14e
    :try_start_14e
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14e .. :try_end_168} :catch_11c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14e .. :try_end_168} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_168} :catch_1eb
    .catchall {:try_start_14e .. :try_end_168} :catchall_1e8

    .line 1523
    const/16 v17, 0x1

    .line 1531
    if-eqz v12, :cond_16f

    .line 1533
    :try_start_16c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_1d8

    .line 1536
    :cond_16f
    :goto_16f
    if-eqz v8, :cond_e0

    .line 1537
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1539
    :try_start_174
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_179

    goto/16 :goto_e0

    .line 1540
    :catch_179
    move-exception v18

    goto/16 :goto_e0

    .line 1526
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_17c
    move-exception v6

    .line 1527
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_17d
    :try_start_17d
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_17d .. :try_end_197} :catchall_1c3

    .line 1531
    if-eqz v12, :cond_19c

    .line 1533
    :try_start_199
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_1e0

    .line 1536
    :cond_19c
    :goto_19c
    if-eqz v7, :cond_14b

    .line 1537
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1539
    :try_start_1a1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    goto :goto_14b

    .line 1540
    :catch_1a5
    move-exception v17

    goto :goto_14b

    .line 1528
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1a7
    move-exception v6

    .line 1529
    .local v6, "e":Ljava/io/IOException;
    :goto_1a8
    :try_start_1a8
    const-string v17, "WallpaperManagerService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_1a8 .. :try_end_1b3} :catchall_1c3

    .line 1531
    if-eqz v12, :cond_1b8

    .line 1533
    :try_start_1b5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1e2

    .line 1536
    :cond_1b8
    :goto_1b8
    if-eqz v7, :cond_14b

    .line 1537
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1539
    :try_start_1bd
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1c1

    goto :goto_14b

    .line 1540
    :catch_1c1
    move-exception v17

    goto :goto_14b

    .line 1531
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1c3
    move-exception v17

    :goto_1c4
    if-eqz v12, :cond_1c9

    .line 1533
    :try_start_1c6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1c9} :catch_1e4

    .line 1536
    :cond_1c9
    :goto_1c9
    if-eqz v7, :cond_1d1

    .line 1537
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1539
    :try_start_1ce
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d1} :catch_1e6

    .line 1540
    :cond_1d1
    :goto_1d1
    throw v17

    .line 1534
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catch_1d2
    move-exception v18

    goto/16 :goto_d8

    .line 1540
    :catch_1d5
    move-exception v18

    goto/16 :goto_e0

    .line 1534
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1d8
    move-exception v18

    goto :goto_16f

    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_1da
    move-exception v17

    goto/16 :goto_143

    .line 1540
    :catch_1dd
    move-exception v17

    goto/16 :goto_14b

    .line 1534
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1e0
    move-exception v17

    goto :goto_19c

    .local v6, "e":Ljava/io/IOException;
    :catch_1e2
    move-exception v17

    goto :goto_1b8

    .end local v6    # "e":Ljava/io/IOException;
    :catch_1e4
    move-exception v18

    goto :goto_1c9

    .line 1540
    :catch_1e6
    move-exception v18

    goto :goto_1d1

    .line 1531
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catchall_1e8
    move-exception v17

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1c4

    .line 1528
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1eb
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1a8

    .line 1526
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1ee
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_17d

    .line 1524
    .end local v4    # "c":Landroid/content/Context;
    .end local v11    # "r":Landroid/content/res/Resources;
    :catch_1f1
    move-exception v6

    goto/16 :goto_11e
.end method

.method public setDimensionHints(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 767
    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 768
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDimensionHints : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 770
    :try_start_30
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 771
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 772
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_5a

    .line 773
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 804
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_57

    throw v3

    .line 775
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_5a
    if-lez p1, :cond_5e

    if-gtz p2, :cond_66

    .line 776
    :cond_5e
    :try_start_5e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "width and height must be > 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 779
    :cond_66
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 780
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 781
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 783
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v3, :cond_7e

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v3, :cond_9f

    .line 784
    :cond_7e
    iput p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 785
    iput p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 786
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 787
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v1, :cond_8b

    monitor-exit v4

    .line 805
    :goto_8a
    return-void

    .line 788
    :cond_8b
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_9f

    .line 789
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_93
    .catchall {:try_start_5e .. :try_end_93} :catchall_57

    if-eqz v3, :cond_a1

    .line 791
    :try_start_95
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9c} :catch_ad
    .catchall {:try_start_95 .. :try_end_9c} :catchall_57

    .line 795
    :goto_9c
    :try_start_9c
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 804
    :cond_9f
    :goto_9f
    monitor-exit v4

    goto :goto_8a

    .line 796
    :cond_a1
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_9f

    .line 800
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_ac
    .catchall {:try_start_9c .. :try_end_ac} :catchall_57

    goto :goto_9f

    .line 793
    :catch_ad
    move-exception v3

    goto :goto_9c
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 822
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 823
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 824
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 825
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 826
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v1, :cond_32

    .line 827
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper not yet initialized for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 852
    .end local v0    # "userId":I
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v2

    .line 829
    .restart local v0    # "userId":I
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_32
    :try_start_32
    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v2, :cond_5b

    .line 830
    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 833
    :cond_5b
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 834
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 835
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 836
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v2, v0, :cond_71

    monitor-exit v3

    .line 853
    :goto_70
    return-void

    .line 837
    :cond_71
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_85

    .line 838
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_79
    .catchall {:try_start_32 .. :try_end_79} :catchall_2f

    if-eqz v2, :cond_87

    .line 840
    :try_start_7b
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_82} :catch_93
    .catchall {:try_start_7b .. :try_end_82} :catchall_2f

    .line 843
    :goto_82
    :try_start_82
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 852
    :cond_85
    :goto_85
    monitor-exit v3

    goto :goto_70

    .line 844
    :cond_87
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v2, :cond_85

    .line 848
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_2f

    goto :goto_85

    .line 841
    :catch_93
    move-exception v2

    goto :goto_82
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 899
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 900
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 901
    :try_start_8
    const-string v5, "WallpaperManagerService"

    const-string v7, "setWallpaper"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSmartBookSupport()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 904
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHaveUsedSmartBook:Z

    .line 907
    :cond_18
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 908
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 909
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_42

    .line 910
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 922
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_3f
    move-exception v5

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v5

    .line 912
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_42
    :try_start_42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    move-result-wide v0

    .line 914
    .local v0, "ident":J
    :try_start_46
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 915
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_4f

    .line 916
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_54

    .line 920
    :cond_4f
    :try_start_4f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    return-object v2

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_54
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_3f
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 951
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 952
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 953
    :try_start_8
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 955
    .local v8, "userId":I
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 956
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_4a

    .line 957
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "userId":I
    :catchall_47
    move-exception v0

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_47

    throw v0

    .line 959
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v8    # "userId":I
    :cond_4a
    :try_start_4a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_47

    move-result-wide v6

    .line 961
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_4f
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 962
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_5e

    .line 964
    :try_start_59
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    monitor-exit v9

    .line 967
    return-void

    .line 964
    :catchall_5e
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_47
.end method

.method public settingsRestored()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_11

    .line 1425
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "settingsRestored() can only be called from the system process"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1429
    :cond_11
    const-string v1, "WallpaperManagerService"

    const-string v2, "settingsRestored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v5, 0x0

    .line 1431
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1432
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1433
    const/4 v1, 0x0

    :try_start_1e
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1434
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1435
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_85

    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 1437
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1442
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1444
    :cond_4e
    const/4 v7, 0x1

    .line 1461
    :cond_4f
    :goto_4f
    monitor-exit v8
    :try_end_50
    .catchall {:try_start_1e .. :try_end_50} :catchall_bb

    .line 1463
    if-nez v7, :cond_7d

    .line 1464
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1466
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1469
    :cond_7d
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1470
    :try_start_80
    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1471
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_ca

    .line 1472
    return-void

    .line 1448
    :cond_85
    :try_start_85
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 1449
    const-string v1, "WallpaperManagerService"

    const-string v2, "settingsRestored: name is empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v7, 0x1

    .line 1455
    :goto_97
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settingsRestored: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    if-eqz v7, :cond_4f

    .line 1457
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_4f

    .line 1461
    :catchall_bb
    move-exception v1

    monitor-exit v8
    :try_end_bd
    .catchall {:try_start_85 .. :try_end_bd} :catchall_bb

    throw v1

    .line 1452
    :cond_be
    :try_start_be
    const-string v1, "WallpaperManagerService"

    const-string v2, "settingsRestored: attempting to restore named resource"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_bb

    move-result v7

    goto :goto_97

    .line 1471
    :catchall_ca
    move-exception v1

    :try_start_cb
    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v1
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 656
    :try_start_3
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 657
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 658
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_1c

    .line 659
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 660
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 661
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 664
    :cond_1c
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_2c

    .line 665
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 666
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 668
    :cond_2c
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 669
    monitor-exit v2

    .line 670
    return-void

    .line 669
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 12
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 673
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 674
    const/4 v6, 0x0

    .line 676
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 678
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_12} :catch_1a
    .catchall {:try_start_4 .. :try_end_12} :catchall_2b

    move-result v0

    if-eqz v0, :cond_1c

    .line 679
    :try_start_15
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2b

    .line 687
    .end local v1    # "cname":Landroid/content/ComponentName;
    :goto_16
    return-void

    .line 676
    :cond_17
    :try_start_17
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_19} :catch_1a
    .catchall {:try_start_17 .. :try_end_19} :catchall_2b

    goto :goto_a

    .line 681
    :catch_1a
    move-exception v7

    .line 682
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 684
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1c
    :try_start_1c
    const-string v0, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 686
    monitor-exit v8

    goto :goto_16

    :catchall_2b
    move-exception v0

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public systemRunning()V
    .registers 6

    .prologue
    .line 543
    const-string v3, "WallpaperManagerService"

    const-string v4, "systemReady"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 545
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 546
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 547
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 549
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v3, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSmartBookSupport()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 557
    const-string v3, "WallpaperManagerService"

    const-string v4, "Smart Book support..."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v3, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    :cond_4b
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 601
    :try_start_55
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_61} :catch_62

    .line 616
    :goto_61
    return-void

    .line 612
    :catch_62
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_61
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v4, 0x0

    .line 926
    if-nez p1, :cond_5

    const-string p1, ""

    .line 928
    :cond_5
    :try_start_5
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 929
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 930
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 931
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 936
    :cond_1f
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 937
    .local v3, "file":Ljava/io/File;
    const/high16 v5, 0x3c000000    # 0.0078125f

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 939
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_34

    move-object v2, v4

    .line 947
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :goto_33
    return-object v2

    .line 942
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    :cond_34
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_36} :catch_37

    goto :goto_33

    .line 944
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_37
    move-exception v1

    .line 945
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperManagerService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 947
    goto :goto_33
.end method
