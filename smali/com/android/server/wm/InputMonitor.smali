.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# static fields
.field private static final MILLI_TO_NANO:J = 0xf4240L


# instance fields
.field private mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 103
    const-string v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-nez v0, :cond_37

    .line 105
    const-string v0, "mtkhdmi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 109
    :cond_37
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputMonitor;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InputMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/InputMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    return p1
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .registers 5
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_a

    .line 276
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 278
    :cond_a
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1f

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 282
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 283
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .registers 20
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    .line 289
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 290
    and-int/lit8 v8, p3, 0x28

    if-nez v8, :cond_de

    const/4 v3, 0x1

    .line 292
    .local v3, "modal":Z
    :goto_b
    if-eqz v3, :cond_e1

    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_e1

    .line 294
    or-int/lit8 p3, p3, 0x20

    .line 295
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v8}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 296
    iget-object v8, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 298
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 299
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 300
    .local v4, "offsets":[I
    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowState;->getStackOffsets([I)V

    .line 301
    iget-object v8, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    const/4 v9, 0x0

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Region;->translate(II)V

    .line 308
    .end local v4    # "offsets":[I
    :cond_36
    :goto_36
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 309
    move/from16 v0, p4

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 310
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 311
    move/from16 v0, p5

    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 312
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v8

    iput-boolean v8, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 313
    move/from16 v0, p6

    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 314
    move/from16 v0, p7

    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 315
    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_e8

    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_5c
    iput-boolean v8, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 316
    iget v8, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 317
    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 318
    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mUid:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 319
    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 321
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 322
    .local v2, "frame":Landroid/graphics/Rect;
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 323
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 324
    iget v8, v2, Landroid/graphics/Rect;->right:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 325
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 327
    iget v8, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_eb

    .line 331
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v8, v9

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 338
    :goto_95
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v8

    if-eqz v8, :cond_f0

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v8

    if-eqz v8, :cond_f0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_f0

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v8, v9}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 342
    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/android/server/input/InputWindowHandle;->isFloating:Z

    .line 345
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_da

    .line 347
    iget-object v7, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 348
    .local v7, "touchRegion":Landroid/graphics/Region;
    const/16 v6, 0x1e

    .line 349
    .local v6, "touchMargin":I
    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 350
    .local v5, "tmp":Landroid/graphics/Rect;
    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v6

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v6

    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Region;->set(IIII)Z

    .line 358
    .end local v5    # "tmp":Landroid/graphics/Rect;
    .end local v6    # "touchMargin":I
    .end local v7    # "touchRegion":Landroid/graphics/Region;
    :cond_da
    :goto_da
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 359
    return-void

    .line 290
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v3    # "modal":Z
    :cond_de
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 306
    .restart local v3    # "modal":Z
    :cond_e1
    iget-object v8, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v8}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_36

    .line 315
    :cond_e8
    const/4 v8, 0x0

    goto/16 :goto_5c

    .line 333
    .restart local v2    # "frame":Landroid/graphics/Rect;
    :cond_eb
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_95

    .line 354
    :cond_f0
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/server/input/InputWindowHandle;->isFloating:Z

    goto :goto_da
.end method

.method private clearInputWindowHandlesLw()V
    .registers 4

    .prologue
    .line 362
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_10

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 365
    :cond_10
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 698
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 582
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 583
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 582
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public freezeInputDispatchingLw()V
    .registers 3

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_15

    .line 665
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_f

    .line 666
    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 670
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 672
    :cond_15
    return-void
.end method

.method public getPointerLayer()I
    .registers 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 8
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 573
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 574
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 573
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 22
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v4, 0x0

    .line 173
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v13, 0x0

    .line 174
    .local v13, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 175
    .local v3, "aboveSystem":Z
    const/4 v5, 0x0

    .line 179
    .local v5, "bIsWNR":Z
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 180
    if-eqz v13, :cond_2a

    iget v14, v13, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 183
    .local v12, "userId":I
    :goto_12
    const-wide/16 v14, 0x1f40

    invoke-static {v12, v14, v15}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v8

    .line 185
    .local v8, "extendTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-lez v14, :cond_2d

    .line 186
    const-string v14, "WindowManager"

    const-string v15, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-wide/32 v14, 0xf4240

    mul-long/2addr v14, v8

    .line 271
    .end local v8    # "extendTime":J
    .end local v12    # "userId":I
    :goto_29
    return-wide v14

    .line 180
    :cond_2a
    const/16 v12, -0x2710

    goto :goto_12

    .line 193
    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v14, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15

    .line 194
    if-eqz p2, :cond_50

    .line 195
    :try_start_36
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v14

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v13, v0

    .line 196
    if-eqz v13, :cond_50

    .line 197
    iget-object v4, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 199
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_cc

    move-result v14

    if-eqz v14, :cond_50

    .line 200
    if-nez v4, :cond_4b

    .line 201
    const/4 v5, 0x1

    .line 206
    :cond_4b
    :try_start_4b
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v14}, Landroid/view/IWindow;->dumpInputDispatchingStatus()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_c1
    .catchall {:try_start_4b .. :try_end_50} :catchall_cc

    .line 215
    :cond_50
    :goto_50
    if-nez v4, :cond_5c

    if-eqz p1, :cond_5c

    .line 216
    :try_start_54
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v14

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 219
    :cond_5c
    if-eqz v13, :cond_d1

    .line 220
    const-string v14, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Input event dispatching timed out sending to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".  Reason: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v16, 0x7d3

    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v7

    .line 228
    .local v7, "systemAlertLayer":I
    iget v14, v13, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v14, v7, :cond_cf

    const/4 v3, 0x1

    .line 238
    .end local v7    # "systemAlertLayer":I
    :goto_a1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v14, v4, v13, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 239
    monitor-exit v15
    :try_end_ab
    .catchall {:try_start_54 .. :try_end_ab} :catchall_cc

    .line 241
    if-eqz v4, :cond_11f

    iget-object v14, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v14, :cond_11f

    if-nez v5, :cond_11f

    .line 245
    :try_start_b3
    iget-object v14, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 246
    .local v2, "abort":Z
    if-nez v2, :cond_142

    .line 249
    iget-wide v14, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bf} :catch_148

    goto/16 :goto_29

    .line 207
    .end local v2    # "abort":Z
    :catch_c1
    move-exception v6

    .line 208
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_c2
    const-string v14, "WindowManager"

    const-string v16, "Error dump input dispatching status."

    move-object/from16 v0, v16

    invoke-static {v14, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 239
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_cc
    move-exception v14

    monitor-exit v15
    :try_end_ce
    .catchall {:try_start_c2 .. :try_end_ce} :catchall_cc

    throw v14

    .line 228
    .restart local v7    # "systemAlertLayer":I
    :cond_cf
    const/4 v3, 0x0

    goto :goto_a1

    .line 229
    .end local v7    # "systemAlertLayer":I
    :cond_d1
    if-eqz v4, :cond_100

    .line 230
    :try_start_d3
    const-string v14, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Input event dispatching timed out sending to application "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".  Reason: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 234
    :cond_100
    const-string v14, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Input event dispatching timed out .  Reason: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_d3 .. :try_end_11e} :catchall_cc

    goto :goto_a1

    .line 253
    :cond_11f
    if-eqz v13, :cond_13b

    .line 257
    :try_start_121
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v14

    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v15, v15, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v14, v15, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_12e} :catch_146

    move-result-wide v10

    .line 259
    .local v10, "timeout":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_142

    .line 263
    const-wide/32 v14, 0xf4240

    mul-long/2addr v14, v10

    goto/16 :goto_29

    .line 269
    .end local v10    # "timeout":J
    :cond_13b
    const-string v14, "WindowManager"

    const-string v15, "both windowState & appWindowToken are null"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_142
    :goto_142
    const-wide/16 v14, 0x0

    goto/16 :goto_29

    .line 265
    :catch_146
    move-exception v14

    goto :goto_142

    .line 251
    :catch_148
    move-exception v14

    goto :goto_142
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 550
    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 474
    new-instance v3, Lcom/android/server/wm/InputMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor$1;-><init>(Lcom/android/server/wm/InputMonitor;)V

    .line 488
    .local v3, "task":Ljava/lang/Runnable;
    const-string v5, "ro.mtk_smartbook_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 489
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 525
    :goto_17
    return-void

    .line 493
    :cond_18
    const/4 v4, 0x0

    .line 495
    .local v4, "type":I
    :try_start_19
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v5, :cond_8a

    .line 496
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v5}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_97

    move-result v4

    .line 504
    :goto_23
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->IS_USER_BUILD:Z

    if-nez v5, :cond_41

    .line 505
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyConfigurationChanged, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_41
    if-ne v4, v9, :cond_b0

    .line 508
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hdmi_cable_plugged"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 510
    .local v1, "hdmiPlugState":I
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSbParams:Lcom/android/server/wm/WindowManagerService$SmartBookParams;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->getPlugState()I

    move-result v2

    .line 511
    .local v2, "smbPlugState":I
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyConfigurationChanged, hdmi plug:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", smb plug:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-ne v1, v9, :cond_82

    const/4 v5, 0x2

    if-eq v2, v5, :cond_86

    :cond_82
    if-nez v1, :cond_a0

    if-nez v2, :cond_a0

    .line 516
    :cond_86
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    .line 498
    .end local v1    # "hdmiPlugState":I
    .end local v2    # "smbPlugState":I
    :cond_8a
    :try_start_8a
    const-string v5, "mtkhdmi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/InputMonitor;->mHDMI:Lcom/mediatek/hdmi/IMtkHdmiManager;
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_96} :catch_97

    goto :goto_23

    .line 501
    :catch_97
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    const-string v6, "mHDMI.getDisplayType error"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "hdmiPlugState":I
    .restart local v2    # "smbPlugState":I
    :cond_a0
    const-string v5, "WindowManager"

    const-string v6, "notifyConfigurationChanged, add pending task"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSbParams:Lcom/android/server/wm/WindowManagerService$SmartBookParams;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->addPendingTask(Ljava/lang/Runnable;)V

    goto/16 :goto_17

    .line 522
    .end local v1    # "hdmiPlugState":I
    .end local v2    # "smbPlugState":I
    :cond_b0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_17
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 117
    if-nez p1, :cond_3

    .line 128
    :goto_2
    return-void

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 122
    :try_start_8
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 123
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2d

    .line 124
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 127
    :cond_2d
    monitor-exit v2

    goto :goto_2

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 544
    return-void
.end method

.method public notifyPredump(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;II)V
    .registers 11
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "pid"    # I
    .param p4, "message"    # I

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    .line 137
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_e

    .line 139
    :try_start_4
    iget-object v4, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v3, v0

    .line 140
    if-eqz v3, :cond_e

    .line 142
    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 146
    :cond_e
    if-nez v1, :cond_14

    if-nez p1, :cond_14

    if-eqz v3, :cond_23

    .line 148
    :cond_14
    new-instance v4, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v4}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    invoke-static {v4}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v4

    const-string v5, "KeyDispatchingTimeout predump"

    invoke-interface {v4, p3, v5, p4}, Lcom/mediatek/anrappmanager/IANRManager;->notifyLightWeightANR(ILjava/lang/String;I)V

    .line 160
    :goto_22
    return-void

    .line 153
    :cond_23
    const-string v4, "WindowManager"

    const-string v5, "Touch event for WNR, it isn\'t necessary to predump"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2a} :catch_2b

    goto :goto_22

    .line 156
    :catch_2b
    move-exception v2

    .line 158
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error notifyPredump "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 6
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v3, 0x1

    .line 642
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_26

    .line 643
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_21

    .line 644
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_21
    iput-boolean v3, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 648
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 650
    :cond_26
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 5
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 653
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_27

    .line 654
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_20

    .line 655
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 659
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 661
    :cond_27
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_25

    .line 687
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_20

    .line 688
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting event dispatching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_20
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 692
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 694
    :cond_25
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 621
    if-nez p1, :cond_b

    .line 622
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 639
    :goto_a
    return-void

    .line 624
    :cond_b
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 625
    .local v1, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 626
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 630
    :try_start_17
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->getFocusAppPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputApplicationHandle;->pid:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_27

    .line 637
    :goto_1f
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_a

    .line 632
    :catch_27
    move-exception v0

    .line 634
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "GetFocusAppPid fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 7
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v3, 0x0

    .line 598
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_21

    .line 599
    :cond_9
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_3b

    .line 603
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 607
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 610
    :cond_31
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 611
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 613
    if-eqz p2, :cond_3b

    .line 614
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 617
    :cond_3b
    return-void
.end method

.method public setSmartBookPlugIn(Z)V
    .registers 3
    .param p1, "plugin"    # Z

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setSmartBookPlugIn(Z)V

    .line 703
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 369
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 3

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_15

    .line 676
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_f

    .line 677
    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 681
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 683
    :cond_15
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 34
    .param p1, "force"    # Z

    .prologue
    .line 373
    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_9

    .line 469
    :goto_8
    return-void

    .line 376
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    .line 386
    .local v29, "universeBackground":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v14, v2, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 387
    .local v14, "aboveUniverseLayer":I
    const/4 v15, 0x0

    .line 388
    .local v15, "addedUniverse":Z
    const/16 v17, 0x0

    .line 391
    .local v17, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_75

    const/16 v22, 0x1

    .line 392
    .local v22, "inDrag":Z
    :goto_2d
    if-eqz v22, :cond_4d

    .line 393
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_3a

    .line 394
    const-string v2, "WindowManager"

    const-string v3, "Inserting drag window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v19, v0

    .line 397
    .local v19, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v19, :cond_78

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 405
    .end local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_4d
    :goto_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 406
    .local v13, "NFW":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_59
    move/from16 v0, v21

    if-ge v0, v13, :cond_80

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FakeWindowImpl;

    iget-object v2, v2, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 406
    add-int/lit8 v21, v21, 0x1

    goto :goto_59

    .line 391
    .end local v13    # "NFW":I
    .end local v21    # "i":I
    .end local v22    # "inDrag":Z
    :cond_75
    const/16 v22, 0x0

    goto :goto_2d

    .line 400
    .restart local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v22    # "inDrag":Z
    :cond_78
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 411
    .end local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v13    # "NFW":I
    .restart local v21    # "i":I
    :cond_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 412
    .local v25, "numDisplays":I
    const/16 v18, 0x0

    .local v18, "displayNdx":I
    :goto_8c
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_17e

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v31

    .line 414
    .local v31, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v30, v2, -0x1

    .local v30, "winNdx":I
    :goto_aa
    if-ltz v30, :cond_17a

    .line 415
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 416
    .local v16, "child":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v23, v0

    .line 417
    .local v23, "inputChannel":Landroid/view/InputChannel;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    .line 418
    .local v24, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v23, :cond_cc

    if-eqz v24, :cond_cc

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_cf

    .line 414
    :cond_cc
    :goto_cc
    add-int/lit8 v30, v30, -0x1

    goto :goto_aa

    .line 423
    :cond_cf
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    .line 424
    .local v20, "flags":I
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    .line 425
    .local v27, "privateFlags":I
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    .line 427
    .local v28, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_170

    const/4 v11, 0x1

    .line 428
    .local v11, "hasFocus":Z
    :goto_f0
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    .line 429
    .local v10, "isVisible":Z
    move/from16 v0, v27

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_fc

    .line 432
    const/16 v17, 0x1

    .line 434
    :cond_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_173

    move/from16 v0, v27

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_173

    if-nez v17, :cond_173

    const/4 v12, 0x1

    .line 437
    .local v12, "hasWallpaper":Z
    :goto_10f
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_175

    const/16 v26, 0x1

    .line 441
    .local v26, "onDefaultDisplay":Z
    :goto_117
    if-eqz v22, :cond_128

    if-eqz v10, :cond_128

    if-eqz v26, :cond_128

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 445
    :cond_128
    if-eqz v29, :cond_159

    if-nez v15, :cond_159

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v2, v14, :cond_159

    if-eqz v26, :cond_159

    .line 447
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 448
    .local v4, "u":Lcom/android/server/wm/WindowState;
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_158

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v2, :cond_158

    .line 449
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_178

    const/4 v8, 0x1

    :goto_152
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 452
    :cond_158
    const/4 v15, 0x1

    .line 455
    .end local v4    # "u":Lcom/android/server/wm/WindowState;
    :cond_159
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v29

    if-eq v2, v0, :cond_cc

    move-object/from16 v5, p0

    move-object/from16 v6, v24

    move-object/from16 v7, v16

    move/from16 v8, v20

    move/from16 v9, v28

    .line 456
    invoke-direct/range {v5 .. v12}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_cc

    .line 427
    .end local v10    # "isVisible":Z
    .end local v11    # "hasFocus":Z
    .end local v12    # "hasWallpaper":Z
    .end local v26    # "onDefaultDisplay":Z
    :cond_170
    const/4 v11, 0x0

    goto/16 :goto_f0

    .line 434
    .restart local v10    # "isVisible":Z
    .restart local v11    # "hasFocus":Z
    :cond_173
    const/4 v12, 0x0

    goto :goto_10f

    .line 437
    .restart local v12    # "hasWallpaper":Z
    :cond_175
    const/16 v26, 0x0

    goto :goto_117

    .line 449
    .restart local v4    # "u":Lcom/android/server/wm/WindowState;
    .restart local v26    # "onDefaultDisplay":Z
    :cond_178
    const/4 v8, 0x0

    goto :goto_152

    .line 412
    .end local v4    # "u":Lcom/android/server/wm/WindowState;
    .end local v10    # "isVisible":Z
    .end local v11    # "hasFocus":Z
    .end local v12    # "hasWallpaper":Z
    .end local v16    # "child":Lcom/android/server/wm/WindowState;
    .end local v20    # "flags":I
    .end local v23    # "inputChannel":Landroid/view/InputChannel;
    .end local v24    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v26    # "onDefaultDisplay":Z
    .end local v27    # "privateFlags":I
    .end local v28    # "type":I
    :cond_17a
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8c

    .line 463
    .end local v30    # "winNdx":I
    .end local v31    # "windows":Lcom/android/server/wm/WindowList;
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_8
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v0, :cond_c

    .line 532
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_13
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 536
    :cond_c
    :goto_c
    :try_start_c
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 537
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0

    .line 533
    :catch_13
    move-exception v0

    goto :goto_c
.end method
