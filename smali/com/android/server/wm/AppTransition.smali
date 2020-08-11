.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0xfa

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.7f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION:I = 0x145

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x145

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mAppTransitionState:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 145
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 174
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 182
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 185
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 189
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 193
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 204
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 214
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1240
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_28

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    .line 1242
    :pswitch_1b
    const-string v0, "APP_STATE_IDLE"

    goto :goto_1a

    .line 1244
    :pswitch_1e
    const-string v0, "APP_STATE_READY"

    goto :goto_1a

    .line 1246
    :pswitch_21
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_1a

    .line 1248
    :pswitch_24
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_1a

    .line 1240
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "transition"    # I

    .prologue
    .line 1193
    packed-switch p0, :pswitch_data_2e

    .line 1234
    :pswitch_3
    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    .line 1195
    :pswitch_6
    const-string v0, "TRANSIT_UNSET"

    goto :goto_5

    .line 1198
    :pswitch_9
    const-string v0, "TRANSIT_NONE"

    goto :goto_5

    .line 1201
    :pswitch_c
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_5

    .line 1204
    :pswitch_f
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_5

    .line 1207
    :pswitch_12
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_5

    .line 1210
    :pswitch_15
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_5

    .line 1213
    :pswitch_18
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_5

    .line 1216
    :pswitch_1b
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_5

    .line 1219
    :pswitch_1e
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_5

    .line 1222
    :pswitch_21
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_5

    .line 1225
    :pswitch_24
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_5

    .line 1228
    :pswitch_27
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_5

    .line 1231
    :pswitch_2a
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    goto :goto_5

    .line 1193
    nop

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private static computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 398
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 399
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 400
    int-to-float v1, p0

    .line 402
    :goto_10
    return v1

    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_10
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .registers 21
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 407
    const/4 v11, 0x0

    .line 408
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_76

    .line 410
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 411
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 412
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 415
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 417
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 418
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 420
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v13, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 421
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 422
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 423
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 424
    move-object v11, v13

    .line 442
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    :goto_57
    packed-switch p1, :pswitch_data_a0

    .line 448
    const-wide/16 v14, 0xfa

    .line 451
    .local v14, "duration":J
    :goto_5c
    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 452
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 453
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 454
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 455
    return-object v11

    .line 425
    .end local v14    # "duration":J
    :cond_76
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_82

    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_8f

    .line 431
    :cond_82
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 432
    .restart local v11    # "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_57

    .line 435
    :cond_8f
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_57

    .line 445
    :pswitch_99
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v14, v6

    .line 446
    .restart local v14    # "duration":J
    goto :goto_5c

    .line 442
    nop

    :pswitch_data_a0
    .packed-switch 0x6
        :pswitch_99
        :pswitch_99
    .end packed-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 308
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_33

    const-string v4, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading animations: layout params pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_73

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_16
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " resId=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_75

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_33
    if-eqz p1, :cond_72

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_72

    .line 315
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_77

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 316
    .local v0, "packageName":Ljava/lang/String;
    :goto_3f
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 317
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_4a

    .line 318
    const-string v0, "android"

    .line 320
    :cond_4a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_66

    const-string v2, "AppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_66
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 325
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_72
    return-object v3

    :cond_73
    move-object v2, v3

    .line 308
    goto :goto_16

    :cond_75
    move-object v2, v3

    goto :goto_28

    .line 315
    :cond_77
    const-string v0, "android"

    goto :goto_3f
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 329
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2a

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2a
    if-eqz p1, :cond_5e

    .line 332
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_35

    .line 333
    const-string p1, "android"

    .line 335
    :cond_35
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_51

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_51
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 340
    :goto_5d
    return-object v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 374
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_e

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 376
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_e

    .line 377
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 378
    move v0, p2

    .line 381
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_e
    if-eqz v0, :cond_15

    .line 382
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 384
    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1255
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_34

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    .line 1257
    :pswitch_1b
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_1a

    .line 1259
    :pswitch_1e
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_1a

    .line 1261
    :pswitch_21
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    goto :goto_1a

    .line 1263
    :pswitch_24
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_1a

    .line 1265
    :pswitch_27
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_1a

    .line 1267
    :pswitch_2a
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_1a

    .line 1269
    :pswitch_2d
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_1a

    .line 1271
    :pswitch_30
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_1a

    .line 1255
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 297
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 298
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 299
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 29
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "transit"    # I
    .param p6, "containingFrame"    # Landroid/graphics/Rect;
    .param p7, "contentInsets"    # Landroid/graphics/Rect;
    .param p8, "isFullScreen"    # Z

    .prologue
    .line 584
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v16, v0

    .line 585
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_20

    move/from16 v0, v16

    int-to-float v15, v0

    .line 586
    .local v15, "thumbWidth":F
    :goto_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 587
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_23

    int-to-float v13, v14

    .line 590
    .local v13, "thumbHeight":F
    :goto_12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 591
    .local v2, "scale":F
    const/4 v11, 0x0

    .line 593
    .local v11, "scaledTopDecor":I
    packed-switch p1, :pswitch_data_246

    .line 703
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Invalid thumbnail transition state"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    .end local v2    # "scale":F
    .end local v11    # "scaledTopDecor":I
    .end local v13    # "thumbHeight":F
    .end local v14    # "thumbHeightI":I
    .end local v15    # "thumbWidth":F
    :cond_20
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_b

    .line 587
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_23
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_12

    .line 596
    .restart local v2    # "scale":F
    .restart local v11    # "scaledTopDecor":I
    .restart local v13    # "thumbHeight":F
    :pswitch_26
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_cd

    .line 598
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v15, v3

    .line 599
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 600
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 601
    .local v18, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 602
    if-eqz p8, :cond_51

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 605
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 621
    :goto_68
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 623
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v8, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    move v4, v2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 626
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 627
    .local v10, "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-int v6, v11

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 629
    .local v17, "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 630
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 631
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 632
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 633
    move-object v4, v12

    .line 706
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    .end local v18    # "unscaledThumbHeight":I
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_b6
    const/16 v3, 0x145

    const/16 v5, 0x145

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 708
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 609
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v7    # "duration":I
    :cond_cd
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v13, v3

    .line 610
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 611
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 612
    .local v19, "unscaledThumbWidth":I
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 613
    .restart local v18    # "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 614
    if-eqz p8, :cond_10a

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 618
    :cond_10a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_68

    .line 638
    .end local v18    # "unscaledThumbHeight":I
    .end local v19    # "unscaledThumbWidth":I
    :pswitch_123
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_132

    .line 641
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_b6

    .line 643
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_132
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 645
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_b6

    .line 649
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_13d
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_14d

    .line 652
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_b6

    .line 654
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_14d
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 656
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_b6

    .line 660
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_158
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_1f0

    .line 662
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v15, v3

    .line 663
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 664
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 665
    .restart local v18    # "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 667
    if-eqz p8, :cond_18c

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 670
    :cond_18c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 685
    :goto_19a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 687
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, v1

    move v5, v2

    move v7, v2

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 690
    .restart local v1    # "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 691
    .restart local v10    # "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-int v8, v11

    int-to-float v8, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 693
    .restart local v17    # "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 694
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 695
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 696
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 698
    move-object v4, v12

    .line 699
    .restart local v4    # "a":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_b6

    .line 673
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    .end local v18    # "unscaledThumbHeight":I
    :cond_1f0
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v13, v3

    .line 674
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 675
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 676
    .restart local v19    # "unscaledThumbWidth":I
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 677
    .restart local v18    # "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 679
    if-eqz p8, :cond_236

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 683
    :cond_236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_19a

    .line 593
    :pswitch_data_246
    .packed-switch 0x0
        :pswitch_26
        :pswitch_123
        :pswitch_13d
        :pswitch_158
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(IIII)Landroid/view/animation/Animation;
    .registers 26
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "transit"    # I

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 520
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_bb

    move/from16 v0, v16

    int-to-float v15, v0

    .line 521
    .local v15, "thumbWidth":F
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 522
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_bf

    int-to-float v13, v14

    .line 524
    .local v13, "thumbHeight":F
    :goto_18
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v4, v3, v15

    .line 525
    .local v4, "scaleW":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v20, v0

    .line 526
    .local v20, "unscaledWidth":F
    mul-float v18, v13, v4

    .line 527
    .local v18, "unscaledHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    sub-float v5, v18, v13

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float v19, v3, v5

    .line 528
    .local v19, "unscaledStartY":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_c3

    .line 530
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v15, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v13, v9

    add-float/2addr v8, v9

    move v6, v4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 533
    .local v2, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 534
    const-wide/16 v8, 0x145

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 535
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 536
    .local v11, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 537
    const-wide/16 v8, 0x145

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 538
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v19

    neg-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 540
    .local v17, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 541
    const-wide/16 v8, 0x145

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 544
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 545
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 546
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 547
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 548
    move-object v6, v12

    .line 572
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_ab
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 520
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "scaleW":F
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v13    # "thumbHeight":F
    .end local v14    # "thumbHeightI":I
    .end local v15    # "thumbWidth":F
    .end local v17    # "translate":Landroid/view/animation/Animation;
    .end local v18    # "unscaledHeight":F
    .end local v19    # "unscaledStartY":F
    .end local v20    # "unscaledWidth":F
    :cond_bb
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_d

    .line 522
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_bf
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_18

    .line 551
    .restart local v4    # "scaleW":F
    .restart local v13    # "thumbHeight":F
    .restart local v18    # "unscaledHeight":F
    .restart local v19    # "unscaledStartY":F
    .restart local v20    # "unscaledWidth":F
    :cond_c3
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v15, v8

    add-float/2addr v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v13, v9

    add-float/2addr v9, v3

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 554
    .restart local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 555
    const-wide/16 v8, 0x145

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 556
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 557
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 558
    const-wide/16 v8, 0x145

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 559
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    neg-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 561
    .restart local v17    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 562
    const-wide/16 v8, 0x145

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 565
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 566
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 567
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 568
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 569
    move-object v6, v12

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_ab
.end method

.method createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;
    .registers 26
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 759
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 760
    .local v20, "thumbWidthI":I
    if-lez v20, :cond_29

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 761
    .local v19, "thumbWidth":F
    :goto_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 762
    .local v18, "thumbHeightI":I
    if-lez v18, :cond_2c

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 764
    .local v17, "thumbHeight":F
    :goto_1e
    packed-switch p1, :pswitch_data_ca

    .line 811
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "Invalid thumbnail transition state"

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 760
    .end local v17    # "thumbHeight":F
    .end local v18    # "thumbHeightI":I
    .end local v19    # "thumbWidth":F
    :cond_29
    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_f

    .line 762
    .restart local v18    # "thumbHeightI":I
    .restart local v19    # "thumbWidth":F
    :cond_2c
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_1e

    .line 767
    .restart local v17    # "thumbHeight":F
    :pswitch_2f
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 768
    .local v5, "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 769
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 814
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    .line 776
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_5f
    const/16 v6, 0xe

    move/from16 v0, p4

    if-ne v0, v6, :cond_6e

    .line 780
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 783
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_6e
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 785
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 790
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_78
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 791
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 795
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_82
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 796
    .restart local v5    # "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 797
    .restart local v7    # "scaleH":F
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v6, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move v10, v5

    move v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 801
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v15, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 803
    .local v15, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 804
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 805
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 806
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 807
    move-object/from16 v4, v16

    .line 808
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 764
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_5f
        :pswitch_78
        :pswitch_82
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(III)Landroid/view/animation/Animation;
    .registers 23
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 719
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_79

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 720
    .local v16, "thumbWidth":F
    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 721
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_7c

    int-to-float v14, v15

    .line 723
    .local v14, "thumbHeight":F
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_7f

    .line 725
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 726
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 727
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 730
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 732
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 733
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 736
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 737
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 738
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 739
    move-object v5, v13

    .line 749
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_6c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 719
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v15    # "thumbHeightI":I
    .end local v16    # "thumbWidth":F
    :cond_79
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_f

    .line 721
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_7c
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1a

    .line 742
    .restart local v14    # "thumbHeight":F
    :cond_7f
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 743
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 744
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_6c
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    const-string v0, "  mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_32

    .line 1282
    const-string v0, "  mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    :cond_32
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_ee

    .line 1325
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_45

    .line 1326
    const-string v0, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1329
    :cond_45
    return-void

    .line 1286
    :pswitch_46
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    const-string v0, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1291
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 1294
    :pswitch_6d
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    const-string v0, "  mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 1300
    :pswitch_86
    const-string v0, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1301
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1303
    const-string v0, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1304
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1305
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_37

    .line 1312
    :pswitch_af
    const-string v0, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1314
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1316
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1318
    const-string v0, " mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1320
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1322
    const-string v0, "  mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_37

    .line 1284
    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_46
        :pswitch_86
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_6d
    .end packed-switch
.end method

.method freeze()V
    .registers 2

    .prologue
    .line 302
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 305
    return-void
.end method

.method getAppTransition()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingX()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    return v0
.end method

.method getStartingY()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .registers 3
    .param p1, "enter"    # Z

    .prologue
    .line 497
    if-eqz p1, :cond_a

    .line 498
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_8

    .line 499
    const/4 v0, 0x0

    .line 507
    :goto_7
    return v0

    .line 501
    :cond_8
    const/4 v0, 0x2

    goto :goto_7

    .line 504
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_10

    .line 505
    const/4 v0, 0x1

    goto :goto_7

    .line 507
    :cond_10
    const/4 v0, 0x3

    goto :goto_7
.end method

.method goodToGo()V
    .registers 2

    .prologue
    .line 291
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 292
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 293
    return-void
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .registers 3

    .prologue
    .line 267
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 237
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 246
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTimeout()Z
    .registers 3

    .prologue
    .line 254
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1, "transit"    # I

    .prologue
    .line 225
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionNone()Z
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    .prologue
    .line 217
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;
    .registers 28
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "isFullScreen"    # Z
    .param p10, "isVoiceInteraction"    # Z

    .prologue
    .line 822
    if-eqz p10, :cond_6c

    const/4 v5, 0x6

    move/from16 v0, p2

    if-eq v0, v5, :cond_13

    const/16 v5, 0x8

    move/from16 v0, p2

    if-eq v0, v5, :cond_13

    const/16 v5, 0xa

    move/from16 v0, p2

    if-ne v0, v5, :cond_6c

    .line 825
    :cond_13
    if-eqz p3, :cond_68

    const v5, 0x10a0075

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 828
    .local v14, "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_28

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_28
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_67
    :goto_67
    return-object v14

    .line 825
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_68
    const v5, 0x10a0076

    goto :goto_18

    .line 832
    :cond_6c
    if-eqz p10, :cond_d8

    const/4 v5, 0x7

    move/from16 v0, p2

    if-eq v0, v5, :cond_7f

    const/16 v5, 0x9

    move/from16 v0, p2

    if-eq v0, v5, :cond_7f

    const/16 v5, 0xb

    move/from16 v0, p2

    if-ne v0, v5, :cond_d8

    .line 835
    :cond_7f
    if-eqz p3, :cond_d4

    const v5, 0x10a0073

    :goto_84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 838
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_94

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_94
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 835
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_d4
    const v5, 0x10a0074

    goto :goto_84

    .line 842
    :cond_d8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_143

    .line 843
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_13e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_e9
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 845
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_f7

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_f7
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 843
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_13e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_e9

    .line 850
    :cond_143
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_19b

    .line 851
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 852
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_160

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_160
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CUSTOM_IN_PLACE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 856
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_19b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1ff

    .line 857
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v14

    .line 858
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_1b8

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_1b8
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 863
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_1ff
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_20d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_28f

    .line 865
    :cond_20d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_28a

    const/4 v5, 0x1

    :goto_215
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 867
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p2

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v14

    .line 869
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_235

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    .line 870
    :cond_235
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_28c

    const-string v16, "ANIM_THUMBNAIL_SCALE_UP"

    .line 872
    .local v16, "animName":Ljava/lang/String;
    :goto_23d
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 865
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v16    # "animName":Ljava/lang/String;
    :cond_28a
    const/4 v5, 0x0

    goto :goto_215

    .line 870
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :cond_28c
    const-string v16, "ANIM_THUMBNAIL_SCALE_DOWN"

    goto :goto_23d

    .line 877
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_28f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_29d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_327

    .line 879
    :cond_29d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_322

    const/4 v5, 0x1

    :goto_2a5
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 881
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v14

    .line 884
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_2cd

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    .line 885
    :cond_2cd
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_324

    const-string v16, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    .line 887
    .restart local v16    # "animName":Ljava/lang/String;
    :goto_2d5
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 879
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v16    # "animName":Ljava/lang/String;
    :cond_322
    const/4 v5, 0x0

    goto :goto_2a5

    .line 885
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :cond_324
    const-string v16, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_2d5

    .line 893
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_327
    const/4 v15, 0x0

    .line 894
    .local v15, "animAttr":I
    packed-switch p2, :pswitch_data_3ea

    .line 950
    :goto_32b
    if-eqz v15, :cond_3e7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 951
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_335
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_33d

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_33d
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animAttr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 896
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_38c
    if-eqz p3, :cond_390

    const/4 v15, 0x4

    .line 899
    :goto_38f
    goto :goto_32b

    .line 896
    :cond_390
    const/4 v15, 0x5

    goto :goto_38f

    .line 901
    :pswitch_392
    if-eqz p3, :cond_396

    const/4 v15, 0x6

    .line 904
    :goto_395
    goto :goto_32b

    .line 901
    :cond_396
    const/4 v15, 0x7

    goto :goto_395

    .line 906
    :pswitch_398
    if-eqz p3, :cond_39d

    const/16 v15, 0x8

    .line 909
    :goto_39c
    goto :goto_32b

    .line 906
    :cond_39d
    const/16 v15, 0x9

    goto :goto_39c

    .line 911
    :pswitch_3a0
    if-eqz p3, :cond_3a5

    const/16 v15, 0xa

    .line 914
    :goto_3a4
    goto :goto_32b

    .line 911
    :cond_3a5
    const/16 v15, 0xb

    goto :goto_3a4

    .line 916
    :pswitch_3a8
    if-eqz p3, :cond_3ae

    const/16 v15, 0xc

    .line 919
    :goto_3ac
    goto/16 :goto_32b

    .line 916
    :cond_3ae
    const/16 v15, 0xd

    goto :goto_3ac

    .line 921
    :pswitch_3b1
    if-eqz p3, :cond_3b7

    const/16 v15, 0xe

    .line 924
    :goto_3b5
    goto/16 :goto_32b

    .line 921
    :cond_3b7
    const/16 v15, 0xf

    goto :goto_3b5

    .line 926
    :pswitch_3ba
    if-eqz p3, :cond_3c0

    const/16 v15, 0x10

    .line 929
    :goto_3be
    goto/16 :goto_32b

    .line 926
    :cond_3c0
    const/16 v15, 0x11

    goto :goto_3be

    .line 931
    :pswitch_3c3
    if-eqz p3, :cond_3c9

    const/16 v15, 0x12

    .line 934
    :goto_3c7
    goto/16 :goto_32b

    .line 931
    :cond_3c9
    const/16 v15, 0x13

    goto :goto_3c7

    .line 936
    :pswitch_3cc
    if-eqz p3, :cond_3d2

    const/16 v15, 0x14

    .line 939
    :goto_3d0
    goto/16 :goto_32b

    .line 936
    :cond_3d2
    const/16 v15, 0x15

    goto :goto_3d0

    .line 941
    :pswitch_3d5
    if-eqz p3, :cond_3db

    const/16 v15, 0x16

    .line 944
    :goto_3d9
    goto/16 :goto_32b

    .line 941
    :cond_3db
    const/16 v15, 0x17

    goto :goto_3d9

    .line 946
    :pswitch_3de
    if-eqz p3, :cond_3e4

    const/16 v15, 0x19

    :goto_3e2
    goto/16 :goto_32b

    :cond_3e4
    const/16 v15, 0x18

    goto :goto_3e2

    .line 950
    :cond_3e7
    const/4 v14, 0x0

    goto/16 :goto_335

    .line 894
    :pswitch_data_3ea
    .packed-switch 0x6
        :pswitch_38c
        :pswitch_392
        :pswitch_398
        :pswitch_3a0
        :pswitch_3a8
        :pswitch_3b1
        :pswitch_3c3
        :pswitch_3ba
        :pswitch_3cc
        :pswitch_3d5
        :pswitch_3de
    .end packed-switch
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)Landroid/view/animation/Animation;
    .registers 29
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "isFullScreen"    # Z
    .param p10, "isVoiceInteraction"    # Z
    .param p11, "isFloating"    # Z

    .prologue
    .line 966
    if-eqz p10, :cond_6c

    const/4 v5, 0x6

    move/from16 v0, p2

    if-eq v0, v5, :cond_13

    const/16 v5, 0x8

    move/from16 v0, p2

    if-eq v0, v5, :cond_13

    const/16 v5, 0xa

    move/from16 v0, p2

    if-ne v0, v5, :cond_6c

    .line 969
    :cond_13
    if-eqz p3, :cond_68

    const v5, 0x10a0075

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 972
    .local v14, "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_28

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_28
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_67
    :goto_67
    return-object v14

    .line 969
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_68
    const v5, 0x10a0076

    goto :goto_18

    .line 976
    :cond_6c
    if-eqz p10, :cond_d8

    const/4 v5, 0x7

    move/from16 v0, p2

    if-eq v0, v5, :cond_7f

    const/16 v5, 0x9

    move/from16 v0, p2

    if-eq v0, v5, :cond_7f

    const/16 v5, 0xb

    move/from16 v0, p2

    if-ne v0, v5, :cond_d8

    .line 979
    :cond_7f
    if-eqz p3, :cond_d4

    const v5, 0x10a0073

    :goto_84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 982
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_94

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_94
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 979
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_d4
    const v5, 0x10a0074

    goto :goto_84

    .line 986
    :cond_d8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_143

    .line 987
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_13e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_e9
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 989
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_f7

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_f7
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 987
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_13e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_e9

    .line 994
    :cond_143
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1a7

    .line 995
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v14

    .line 996
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_160

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_160
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 1001
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_1a7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1b5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_237

    .line 1003
    :cond_1b5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_232

    const/4 v5, 0x1

    :goto_1bd
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1005
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p2

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1007
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_1dd

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    .line 1008
    :cond_1dd
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_234

    const-string v16, "ANIM_THUMBNAIL_SCALE_UP"

    .line 1010
    .local v16, "animName":Ljava/lang/String;
    :goto_1e5
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 1003
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v16    # "animName":Ljava/lang/String;
    :cond_232
    const/4 v5, 0x0

    goto :goto_1bd

    .line 1008
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :cond_234
    const-string v16, "ANIM_THUMBNAIL_SCALE_DOWN"

    goto :goto_1e5

    .line 1015
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_237
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_245

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2cf

    .line 1017
    :cond_245
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2ca

    const/4 v5, 0x1

    :goto_24d
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1019
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1022
    .restart local v14    # "a":Landroid/view/animation/Animation;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_275

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    .line 1023
    :cond_275
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_2cc

    const-string v16, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    .line 1025
    .restart local v16    # "animName":Ljava/lang/String;
    :goto_27d
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 1017
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v16    # "animName":Ljava/lang/String;
    :cond_2ca
    const/4 v5, 0x0

    goto :goto_24d

    .line 1023
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :cond_2cc
    const-string v16, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_27d

    .line 1031
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_2cf
    const/4 v15, 0x0

    .line 1032
    .local v15, "animAttr":I
    packed-switch p2, :pswitch_data_436

    .line 1084
    const/4 v14, 0x0

    .line 1087
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_2d4
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_2dc

    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_67

    :cond_2dc
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animAttr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 1034
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_32b
    if-eqz p3, :cond_339

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080002

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1037
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_338
    goto :goto_2d4

    .line 1034
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_338

    .line 1039
    :pswitch_345
    if-eqz p3, :cond_352

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8080000

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1042
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_351
    goto :goto_2d4

    .line 1039
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080001

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_351

    .line 1044
    :pswitch_35e
    if-eqz p3, :cond_36d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080007

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1047
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_36b
    goto/16 :goto_2d4

    .line 1044
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_36d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080008

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_36b

    .line 1049
    :pswitch_379
    if-eqz p3, :cond_388

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080005

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1052
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_386
    goto/16 :goto_2d4

    .line 1049
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080006

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_386

    .line 1054
    :pswitch_394
    if-eqz p3, :cond_3a3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080007

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1057
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_3a1
    goto/16 :goto_2d4

    .line 1054
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_3a3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080008

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_3a1

    .line 1059
    :pswitch_3af
    if-eqz p3, :cond_3be

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080005

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1062
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_3bc
    goto/16 :goto_2d4

    .line 1059
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_3be
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080006

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_3bc

    .line 1064
    :pswitch_3ca
    if-eqz p3, :cond_3d9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x808000f

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1067
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_3d7
    goto/16 :goto_2d4

    .line 1064
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_3d9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080010

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_3d7

    .line 1069
    :pswitch_3e5
    if-eqz p3, :cond_3f4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x8080009

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1072
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_3f2
    goto/16 :goto_2d4

    .line 1069
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_3f4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x808000a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_3f2

    .line 1074
    :pswitch_400
    if-eqz p3, :cond_40f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x808000d

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1077
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_40d
    goto/16 :goto_2d4

    .line 1074
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_40f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x808000e

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_40d

    .line 1079
    :pswitch_41b
    if-eqz p3, :cond_42a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x808000b

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1082
    .restart local v14    # "a":Landroid/view/animation/Animation;
    :goto_428
    goto/16 :goto_2d4

    .line 1079
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_42a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v6, 0x808000c

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    goto :goto_428

    .line 1032
    :pswitch_data_436
    .packed-switch 0x6
        :pswitch_32b
        :pswitch_345
        :pswitch_35e
        :pswitch_379
        :pswitch_394
        :pswitch_3af
        :pswitch_3e5
        :pswitch_3ca
        :pswitch_400
        :pswitch_41b
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 346
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 348
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 349
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 350
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 353
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 354
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 356
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 361
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_11

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 363
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_c

    .line 364
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 366
    :cond_c
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 368
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1173
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1174
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1175
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1179
    :goto_d
    return-void

    .line 1177
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_d
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1108
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1109
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1111
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1112
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1114
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1118
    :goto_17
    return-void

    .line 1116
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_17
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 9
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1155
    if-eqz p7, :cond_20

    const/4 v0, 0x5

    :goto_9
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1158
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1159
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1160
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1161
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1162
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1163
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1165
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1169
    :goto_1f
    return-void

    .line 1155
    :cond_20
    const/4 v0, 0x6

    goto :goto_9

    .line 1167
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1f
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1123
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1124
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1125
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1126
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1127
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1128
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1129
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1131
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1133
    :cond_1b
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .registers 7
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1138
    if-eqz p5, :cond_1c

    const/4 v0, 0x3

    :goto_9
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1141
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1142
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1143
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1144
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1146
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1150
    :goto_1b
    return-void

    .line 1138
    :cond_1c
    const/4 v0, 0x4

    goto :goto_9

    .line 1148
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1b
.end method

.method postAnimationCallback()V
    .registers 5

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_16

    .line 1100
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1103
    :cond_16
    return-void
.end method

.method prepare()V
    .registers 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 288
    :cond_9
    return-void
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 11
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 480
    packed-switch p4, :pswitch_data_14

    .line 486
    const/16 v4, 0xfa

    .line 489
    .local v4, "duration":I
    :goto_5
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 483
    .end local v4    # "duration":I
    :pswitch_10
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 484
    .restart local v4    # "duration":I
    goto :goto_5

    .line 480
    nop

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 463
    if-lez p4, :cond_6

    .line 464
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 466
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 467
    invoke-virtual {p1, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 468
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 469
    return-object p1
.end method

.method setAppTransition(I)V
    .registers 2
    .param p1, "transit"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 234
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 1332
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 1333
    return-void
.end method

.method setIdle()V
    .registers 2

    .prologue
    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 251
    return-void
.end method

.method setReady()V
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 243
    return-void
.end method

.method setTimeout()V
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
