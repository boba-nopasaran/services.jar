.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field private mButtonBrightness:F

.field mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field mPreferredRefreshRate:F

.field private mScreenBrightness:F

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 777
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    .line 786
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    .line 788
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 789
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 790
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    .line 791
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    .line 792
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    .line 793
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    .line 794
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    .line 795
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    .line 796
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    .line 800
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:Z

    .line 804
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mPreferredRefreshRate:F

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 777
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Lcom/android/server/wm/Session;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 777
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 777
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # F

    .prologue
    .line 777
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 777
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # F

    .prologue
    .line 777
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 777
    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # J

    .prologue
    .line 777
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 777
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return p1
.end method
