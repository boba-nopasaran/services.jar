.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 833
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 834
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 838
    const/4 v3, 0x0

    .line 840
    .local v3, "handled":Z
    :try_start_1
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_42

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_42

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_42

    .line 843
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 844
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 845
    .local v2, "endDrag":Z
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 846
    .local v5, "newX":F
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 848
    .local v6, "newY":F
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_be

    .line 876
    :cond_27
    :goto_27
    if-eqz v2, :cond_41

    .line 877
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_34

    const-string v7, "WindowManager"

    const-string v8, "Drag ended; tearing down state"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_34
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_52
    .catchall {:try_start_1 .. :try_end_39} :catchall_6f

    .line 880
    :try_start_39
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 881
    monitor-exit v8
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_bb

    .line 884
    :cond_41
    const/4 v3, 0x1

    .line 889
    .end local v2    # "endDrag":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    :cond_42
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 891
    :goto_45
    return-void

    .line 850
    .restart local v2    # "endDrag":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    :pswitch_46
    :try_start_46
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_27

    .line 851
    const-string v7, "WindowManager"

    const-string v8, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_52
    .catchall {:try_start_46 .. :try_end_51} :catchall_6f

    goto :goto_27

    .line 886
    .end local v2    # "endDrag":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    :catch_52
    move-exception v1

    .line 887
    .local v1, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v7, "WindowManager"

    const-string v8, "Exception caught by drag handleMotion"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_6f

    .line 889
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_45

    .line 856
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    :pswitch_5e
    :try_start_5e
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_52
    .catchall {:try_start_5e .. :try_end_63} :catchall_6f

    .line 858
    :try_start_63
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    .line 859
    monitor-exit v8

    goto :goto_27

    :catchall_6c
    move-exception v7

    monitor-exit v8
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v7
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6f} :catch_52
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 889
    .end local v2    # "endDrag":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    :catchall_6f
    move-exception v7

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v7

    .line 863
    .restart local v2    # "endDrag":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    :pswitch_74
    :try_start_74
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_9a

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got UP on move channel; dropping at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_9a
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_9f} :catch_52
    .catchall {:try_start_74 .. :try_end_9f} :catchall_6f

    .line 866
    :try_start_9f
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v2

    .line 867
    monitor-exit v8

    goto/16 :goto_27

    :catchall_aa
    move-exception v7

    monitor-exit v8
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw v7

    .line 871
    :pswitch_ad
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_b8

    const-string v7, "WindowManager"

    const-string v8, "Drag cancelled!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b8} :catch_52
    .catchall {:try_start_ac .. :try_end_b8} :catchall_6f

    .line 872
    :cond_b8
    const/4 v2, 0x1

    goto/16 :goto_27

    .line 881
    :catchall_bb
    move-exception v7

    :try_start_bc
    monitor-exit v8
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw v7
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_be} :catch_52
    .catchall {:try_start_bd .. :try_end_be} :catchall_6f

    .line 848
    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_46
        :pswitch_74
        :pswitch_5e
        :pswitch_ad
    .end packed-switch
.end method
