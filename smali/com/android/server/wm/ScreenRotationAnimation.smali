.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static DEBUG_STATE:Z = false

.field static DEBUG_TRANSFORMS:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"

.field static TWO_PHASE_ANIMATION:Z

.field static USE_CUSTOM_BLACK_FRAME:Z


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field mForceDefaultOrientation:Z

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    .line 50
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    .line 51
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    .line 52
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZ)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "inTransaction"    # Z
    .param p5, "forceDefaultOrientation"    # Z
    .param p6, "isSecure"    # Z

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 68
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 79
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 81
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 83
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 90
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 92
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 94
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 100
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 102
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 104
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 109
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 111
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 113
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 116
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 117
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 118
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 126
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 127
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 128
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 129
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 131
    const/16 v2, 0x9

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 213
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 214
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v9

    .line 219
    .local v9, "display":Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 222
    .local v13, "originalRotation":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 223
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p5, :cond_209

    .line 225
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    .line 226
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 227
    .local v14, "originalWidth":I
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 233
    .local v12, "originalHeight":I
    :goto_101
    const/4 v2, 0x1

    if-eq v13, v2, :cond_107

    const/4 v2, 0x3

    if-ne v13, v2, :cond_20f

    .line 235
    :cond_107
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 236
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 242
    :goto_10f
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 243
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 244
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 246
    if-nez p4, :cond_12b

    .line 247
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_128

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_128
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 254
    :cond_12b
    const/4 v8, 0x4

    .line 255
    .local v8, "flags":I
    if-eqz p6, :cond_130

    .line 256
    or-int/lit16 v8, v8, 0x80

    .line 259
    :cond_130
    :try_start_130
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v2, :cond_219

    .line 260
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v4, "ScreenshotSurface"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v7, -0x1

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 263
    const-string v2, "ScreenRotationAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenRotationAnimation ctor: displayOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_16a
    new-instance v15, Landroid/view/Surface;

    invoke-direct {v15}, Landroid/view/Surface;-><init>()V

    .line 272
    .local v15, "sur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v15, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 274
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x1e8481

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 280
    invoke-virtual {v15}, Landroid/view/Surface;->destroy()V
    :try_end_1a5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_130 .. :try_end_1a5} :catch_231
    .catchall {:try_start_130 .. :try_end_1a5} :catchall_23b

    .line 286
    .end local v15    # "sur":Landroid/view/Surface;
    :goto_1a5
    const-wide/16 v2, 0x20

    :try_start_1a7
    const-string v4, "ScreenRotationAnimation:Create"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 287
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  FREEZE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": CREATE, w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V
    :try_end_1f8
    .catchall {:try_start_1a7 .. :try_end_1f8} :catchall_23b

    .line 292
    if-nez p4, :cond_208

    .line 293
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 294
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_208

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_208
    return-void

    .line 230
    .end local v8    # "flags":I
    .end local v12    # "originalHeight":I
    .end local v14    # "originalWidth":I
    :cond_209
    iget v14, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 231
    .restart local v14    # "originalWidth":I
    iget v12, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v12    # "originalHeight":I
    goto/16 :goto_101

    .line 238
    :cond_20f
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 239
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto/16 :goto_10f

    .line 266
    .restart local v8    # "flags":I
    :cond_219
    :try_start_219
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v4, "ScreenshotSurface"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v7, -0x1

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_22f
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_219 .. :try_end_22f} :catch_231
    .catchall {:try_start_219 .. :try_end_22f} :catchall_23b

    goto/16 :goto_16a

    .line 281
    :catch_231
    move-exception v11

    .line 282
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_232
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate freeze surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_239
    .catchall {:try_start_232 .. :try_end_239} :catchall_23b

    goto/16 :goto_1a5

    .line 292
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_23b
    move-exception v2

    if-nez p4, :cond_24c

    .line 293
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 294
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_24c

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24c
    throw v2
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 406
    packed-switch p0, :pswitch_data_28

    .line 423
    :goto_4
    return-void

    .line 408
    :pswitch_5
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_4

    .line 411
    :pswitch_9
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 412
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 415
    :pswitch_13
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 416
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 419
    :pswitch_1e
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 420
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 406
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_13
        :pswitch_1e
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 355
    sub-int v0, p1, p0

    .line 356
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 357
    :cond_6
    return v0
.end method

.method private hasAnimations()Z
    .registers 2

    .prologue
    .line 808
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    :cond_14
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private setRotationInTransaction(I)V
    .registers 6
    .param p1, "rotation"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 432
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 433
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 436
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v1, :cond_2c

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    .line 438
    return-void
.end method

.method private setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V
    .registers 13
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "alpha"    # F

    .prologue
    .line 361
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_19b

    .line 362
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 363
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 364
    .local v2, "x":F
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x5

    aget v3, v4, v5

    .line 365
    .local v3, "y":F
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v4, :cond_2a

    .line 366
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 367
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 368
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 370
    :cond_2a
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 371
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 374
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, p2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 377
    const-wide/16 v4, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScreenRotationAnimation:SetMatrix dsdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dtdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dsdy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dtdy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 382
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v4, :cond_e5

    .line 383
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetSnapshotTransformInTransaction SetMatrix dsdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dtdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dsdy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dtdy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_e5
    const-wide/16 v4, 0x20

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 391
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v4, :cond_19b

    .line 392
    const/4 v4, 0x4

    new-array v1, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    int-to-float v5, v5

    aput v5, v1, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    int-to-float v5, v5

    aput v5, v1, v4

    .line 393
    .local v1, "srcPnts":[F
    const/4 v4, 0x4

    new-array v0, v4, [F

    .line 394
    .local v0, "dstPnts":[F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 396
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Original  : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")-("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transformed: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")-("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "dstPnts":[F
    .end local v1    # "srcPnts":[F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_19b
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z
    .registers 26
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "dismissing"    # Z
    .param p8, "exitAnim"    # I
    .param p9, "enterAnim"    # I

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_8

    .line 461
    const/4 v2, 0x0

    .line 707
    :goto_7
    return v2

    .line 463
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-eqz v2, :cond_10

    .line 464
    const/4 v2, 0x1

    goto :goto_7

    .line 467
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 469
    const/4 v12, 0x0

    .line 472
    .local v12, "firstStart":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v10

    .line 474
    .local v10, "delta":I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_9e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_9e

    if-eqz p7, :cond_30

    if-eqz v10, :cond_9e

    .line 476
    :cond_30
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_3b

    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Creating start and finish animations"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3b
    const/4 v12, 0x1

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0056

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0055

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 482
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_6d

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0057

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 486
    :cond_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 490
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_9e

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 496
    :cond_9e
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_ee

    const-string v2, "ScreenRotationAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotation delta: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " finalWidth="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " finalHeight="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " origWidth="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " origHeight="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_ee
    if-eqz p8, :cond_3de

    if-eqz p9, :cond_3de

    .line 502
    const/4 v9, 0x1

    .line 503
    .local v9, "customAnim":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move/from16 v0, p8

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move/from16 v0, p9

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 555
    :cond_10f
    :goto_10f
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_18e

    if-eqz v12, :cond_18e

    .line 559
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    add-int v2, v2, p5

    div-int/lit8 v14, v2, 0x2

    .line 560
    .local v14, "halfWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    add-int v2, v2, p6

    div-int/lit8 v13, v2, 0x2

    .line 562
    .local v13, "halfHeight":I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_130

    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Initializing start and finish animations"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v14, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v2, v14, v13, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v14, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v2, v14, v13, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 571
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_18e

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 578
    .end local v13    # "halfHeight":I
    .end local v14    # "halfWidth":I
    :cond_18e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 580
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_1cb

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 584
    :cond_1cb
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 585
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 586
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 588
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_251

    if-eqz v12, :cond_251

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 597
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_251

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 604
    :cond_251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 608
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_28b

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 613
    :cond_28b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v7

    .line 614
    .local v7, "layerStack":I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_31c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_31c

    .line 615
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_2a9

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_2b0

    :cond_2a9
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_2b0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v10, v2, v3, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 629
    :try_start_2c2
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 631
    .local v4, "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-direct {v5, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 632
    .local v5, "inner":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8483

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_30a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2c2 .. :try_end_30a} :catch_4b0
    .catchall {:try_start_2c2 .. :try_end_30a} :catchall_4cc

    .line 638
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 639
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_315

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_31c

    :cond_315
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_31c
    :goto_31c
    if-nez v9, :cond_382

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_382

    .line 646
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_32c

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_333

    :cond_32c
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_333
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 657
    :try_start_336
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v10, v2, v3, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 661
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_4e0

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 666
    .restart local v4    # "outer":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 672
    .restart local v5    # "inner":Landroid/graphics/Rect;
    :goto_353
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8482

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_370
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_336 .. :try_end_370} :catch_510
    .catchall {:try_start_336 .. :try_end_370} :catchall_52c

    .line 678
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 679
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_37b

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_382

    :cond_37b
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_382
    :goto_382
    if-eqz v9, :cond_3db

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_3db

    .line 686
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_392

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_399

    :cond_392
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_399
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 692
    :try_start_39c
    new-instance v4, Landroid/graphics/Rect;

    move/from16 v0, p5

    neg-int v2, v0

    mul-int/lit8 v2, v2, 0x1

    move/from16 v0, p6

    neg-int v3, v0

    mul-int/lit8 v3, v3, 0x1

    mul-int/lit8 v6, p5, 0x2

    mul-int/lit8 v8, p6, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 694
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 695
    .restart local v5    # "inner":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8480

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_3c9
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_39c .. :try_end_3c9} :catch_540
    .catchall {:try_start_39c .. :try_end_3c9} :catchall_55c

    .line 700
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 701
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_3d4

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_3db

    :cond_3d4
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_3db
    :goto_3db
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 506
    .end local v7    # "layerStack":I
    .end local v9    # "customAnim":Z
    :cond_3de
    const/4 v9, 0x0

    .line 507
    .restart local v9    # "customAnim":Z
    packed-switch v10, :pswitch_data_570

    goto/16 :goto_10f

    .line 509
    :pswitch_3e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0047

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0046

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 513
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_10f

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0048

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_10f

    .line 519
    :pswitch_417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0053

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0052

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 523
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_10f

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0054

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_10f

    .line 529
    :pswitch_44a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0049

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 533
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_10f

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_10f

    .line 539
    :pswitch_47d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0050

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 543
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_10f

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0051

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_10f

    .line 635
    .restart local v7    # "layerStack":I
    :catch_4b0
    move-exception v11

    .line 636
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_4b1
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b8
    .catchall {:try_start_4b1 .. :try_end_4b8} :catchall_4cc

    .line 638
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 639
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_4c3

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_31c

    :cond_4c3
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31c

    .line 638
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_4cc
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 639
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_4d8

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_4df

    :cond_4d8
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4df
    throw v2

    .line 668
    :cond_4e0
    :try_start_4e0
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 670
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-direct {v5, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_50e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4e0 .. :try_end_50e} :catch_510
    .catchall {:try_start_4e0 .. :try_end_50e} :catchall_52c

    .restart local v5    # "inner":Landroid/graphics/Rect;
    goto/16 :goto_353

    .line 675
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :catch_510
    move-exception v11

    .line 676
    .restart local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_511
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_518
    .catchall {:try_start_511 .. :try_end_518} :catchall_52c

    .line 678
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 679
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_523

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_382

    :cond_523
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_382

    .line 678
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_52c
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 679
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_538

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_53f

    :cond_538
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53f
    throw v2

    .line 697
    :catch_540
    move-exception v11

    .line 698
    .restart local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_541
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_548
    .catchall {:try_start_541 .. :try_end_548} :catchall_55c

    .line 700
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 701
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_553

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_3db

    :cond_553
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3db

    .line 700
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_55c
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 701
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_568

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_56f

    :cond_568
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56f
    throw v2

    .line 507
    :pswitch_data_570
    .packed-switch 0x0
        :pswitch_3e4
        :pswitch_417
        :pswitch_44a
        :pswitch_47d
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .registers 10
    .param p1, "now"    # J

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 818
    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v3, p1, v4

    if-lez v3, :cond_11

    .line 819
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 821
    :cond_11
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_28

    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_28

    .line 822
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_26

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Step: finish anim now ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_26
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 826
    :cond_28
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_88

    .line 827
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    .line 828
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5a

    .line 829
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    .line 830
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_5a

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_5a
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    .line 834
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_88

    .line 835
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    .line 836
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_88

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_88
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_ba

    .line 840
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    .line 841
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_ba

    .line 842
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    .line 843
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_ba

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_ba
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_c2

    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    sub-long v0, p1, v4

    .line 848
    .local v0, "finishNow":J
    :cond_c2
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_de

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: finishNow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_de
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_13e

    .line 851
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    .line 852
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_110

    .line 853
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    .line 854
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_110

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_110
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    .line 858
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_13e

    .line 859
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    .line 860
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_13e

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_13e
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_170

    .line 864
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    .line 865
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_170

    .line 866
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    .line 867
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_170

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_170
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 872
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_19e

    .line 873
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 874
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_19e

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_19e
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 878
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1cc

    .line 879
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 880
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_1cc

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1cc
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_1fe

    .line 884
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    .line 885
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1fe

    .line 886
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    .line 887
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_1fe

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_1fe
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_263

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_20e

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v3, :cond_263

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v3, :cond_263

    .line 892
    :cond_20e
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_248

    .line 893
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_22d

    .line 894
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_221

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing start exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_221
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 896
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 897
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 899
    :cond_22d
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_248

    .line 900
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_23c

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing finish exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_23c
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 902
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 903
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 906
    :cond_248
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_263

    .line 907
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_257

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing rotate exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_257
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 909
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 910
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 914
    :cond_263
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_2c8

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_273

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v3, :cond_2c8

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v3, :cond_2c8

    .line 915
    :cond_273
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_2ad

    .line 916
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_292

    .line 917
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_286

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing start enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_286
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 919
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 920
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 922
    :cond_292
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2ad

    .line 923
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_2a1

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing finish enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_2a1
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 925
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 926
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 929
    :cond_2ad
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2c8

    .line 930
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_2bc

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing rotate enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_2bc
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 932
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 933
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 937
    :cond_2c8
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_329

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v3, :cond_329

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v3, :cond_329

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v3, :cond_329

    .line 938
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2f3

    .line 939
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_2e7

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing start frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2e7
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 941
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 942
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 944
    :cond_2f3
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_30e

    .line 945
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_302

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing finish frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_302
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 947
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 948
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 950
    :cond_30e
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_329

    .line 951
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_31d

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing rotate frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_31d
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 953
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    .line 954
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 958
    :cond_329
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 959
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 960
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_357

    .line 961
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 962
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 964
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 965
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 968
    :cond_357
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_375

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_375
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_393

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_393
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_3d5

    .line 975
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 976
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 977
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 978
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 979
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_3d5

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_3d5
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_3e9

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v3, :cond_405

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v3, :cond_405

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v3, :cond_405

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v3, :cond_405

    :cond_3e9
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_3f9

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v3, :cond_405

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v3, :cond_405

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v3, :cond_405

    :cond_3f9
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_405

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_405

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez v3, :cond_406

    :cond_405
    const/4 v2, 0x1

    .line 989
    .local v2, "more":Z
    :cond_406
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 991
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_42f

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_42f
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFIIII)Z
    .registers 19
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .prologue
    .line 716
    const-wide/16 v0, 0x20

    const-string v2, "ScreenRotationAnimation:Begin"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 717
    const-string v0, "WindowManager"

    const-string v1, "Dismiss!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_19

    .line 721
    const/4 v0, 0x0

    .line 732
    :goto_18
    return v0

    .line 723
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_2c

    .line 724
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z

    .line 727
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_32

    .line 728
    const/4 v0, 0x0

    goto :goto_18

    .line 730
    :cond_32
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_3d

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Setting mFinishAnimReady = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 732
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public enableDebugLog(Z)V
    .registers 3
    .param p1, "en"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1097
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    .line 1098
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    .line 1099
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    .line 1100
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    .line 1101
    return-void
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isRotating()Z
    .registers 3

    .prologue
    .line 804
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public kill()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x20

    const/4 v3, 0x0

    .line 736
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_e

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Kill!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_41

    .line 739
    const-string v0, "ScreenRotationAnimation:End"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 740
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 743
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 745
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4c

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 747
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 749
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_57

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 751
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 753
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_62

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 755
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 757
    :cond_62
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_92

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_71

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 760
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 762
    :cond_71
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7c

    .line 763
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 764
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 766
    :cond_7c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_87

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 768
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 770
    :cond_87
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_92

    .line 771
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 772
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 775
    :cond_92
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_b7

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a1

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 778
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 780
    :cond_a1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_ac

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 782
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    .line 784
    :cond_ac
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b7

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 786
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 789
    :cond_b7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c2

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 791
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 793
    :cond_c2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_cd

    .line 794
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 795
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 797
    :cond_cd
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 145
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 146
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 147
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_4e

    .line 148
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCustomBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4e

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 153
    :cond_4e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_77

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 157
    :cond_77
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_a0

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 161
    :cond_a0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 162
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 164
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 166
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 167
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 168
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 170
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 172
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 174
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 176
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 178
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 180
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 181
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 182
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 183
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 184
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 186
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 187
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 195
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 198
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 199
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 202
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 204
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_27a

    .line 205
    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :cond_27a
    return-void
.end method

.method public setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z
    .registers 19
    .param p1, "rotation"    # I
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "maxAnimationDuration"    # J
    .param p5, "animationScale"    # F
    .param p6, "finalWidth"    # I
    .param p7, "finalHeight"    # I

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V

    .line 444
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_18

    .line 445
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z

    move-result v0

    .line 450
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public setSnapshotScaleForSMB(III)V
    .registers 12
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 301
    const-string v5, "ro.mtk_smartbook_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, "shortSize":I
    const/4 v2, 0x0

    .line 304
    .local v2, "longSize":I
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    if-ge v5, v6, :cond_25

    .line 305
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 306
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 312
    :goto_1a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 313
    .local v4, "wScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 314
    .local v1, "hScale":F
    if-ge p2, p3, :cond_a0

    .line 315
    if-ne p2, v3, :cond_2a

    if-ne p3, v2, :cond_2a

    .line 348
    .end local v1    # "hScale":F
    .end local v2    # "longSize":I
    .end local v3    # "shortSize":I
    .end local v4    # "wScale":F
    :cond_24
    :goto_24
    return-void

    .line 308
    .restart local v2    # "longSize":I
    .restart local v3    # "shortSize":I
    :cond_25
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 309
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    goto :goto_1a

    .line 318
    .restart local v1    # "hScale":F
    .restart local v4    # "wScale":F
    :cond_2a
    int-to-float v5, p2

    int-to-float v6, v3

    div-float v4, v5, v6

    .line 319
    int-to-float v5, p3

    int-to-float v6, v2

    div-float v1, v5, v6

    .line 329
    :goto_32
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apply new resolution to freezing surface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", r:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 333
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 334
    .local v0, "delta":I
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, p2, p3, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 336
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-ne p1, v5, :cond_ad

    .line 337
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 338
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no rotation, scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_98
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    goto :goto_24

    .line 322
    .end local v0    # "delta":I
    :cond_a0
    if-ne p2, v2, :cond_a4

    if-eq p3, v3, :cond_24

    .line 325
    :cond_a4
    int-to-float v5, p2

    int-to-float v6, v2

    div-float v4, v5, v6

    .line 326
    int-to-float v5, p3

    int-to-float v6, v3

    div-float v1, v5, v6

    goto :goto_32

    .line 339
    .restart local v0    # "delta":I
    :cond_ad
    if-eqz p1, :cond_b2

    const/4 v5, 0x2

    if-ne p1, v5, :cond_da

    .line 340
    :cond_b2
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 341
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotation to portrait, scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 343
    :cond_da
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 344
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotation to landscape, scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98
.end method

.method public stepAnimationLocked(J)Z
    .registers 8
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 1043
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1044
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v1, :cond_14

    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Step: no animations running"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_14
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 1086
    :goto_16
    return v0

    .line 1049
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_8e

    .line 1050
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_26

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Step: starting start, finish, rotate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_26
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_4e

    .line 1052
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_33

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1055
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3c

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1058
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_45

    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1061
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4e

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1065
    :cond_4e
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_6d

    .line 1066
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5b

    .line 1067
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1069
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_64

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1072
    :cond_64
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6d

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1076
    :cond_6d
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_76

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1079
    :cond_76
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7f

    .line 1080
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1082
    :cond_7f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 1086
    :cond_8e
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v0

    goto :goto_16
.end method

.method updateSurfacesInTransaction()V
    .registers 4

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_5

    .line 1040
    :goto_4
    return-void

    .line 1001
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_25

    .line 1002
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_25

    .line 1003
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_20

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Exit animations done, hiding screenshot surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 1008
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_45

    .line 1009
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v0, :cond_92

    .line 1010
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_40

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding black frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1017
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_65

    .line 1018
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_9e

    .line 1019
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_60

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding exiting frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_60
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1030
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_85

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v0, :cond_c2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v0, :cond_c2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v0, :cond_c2

    .line 1032
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_80

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding entering frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_80
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1039
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    goto/16 :goto_4

    .line 1013
    :cond_92
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_45

    .line 1022
    :cond_9e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1023
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1024
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_65

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setAlpha(F)V

    goto :goto_65

    .line 1035
    :cond_c2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_85
.end method
