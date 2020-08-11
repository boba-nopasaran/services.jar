.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_PROVIDERS_CHANGED:I = 0x3

.field public static final MSG_NOTIFY_PROVIDER_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_UPDATE_APP_WIDGET:I = 0x1

.field public static final MSG_NOTIFY_VIEW_DATA_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2947
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2948
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2949
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2953
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_6a

    .line 2996
    :goto_5
    return-void

    .line 2955
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2956
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2957
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2958
    .local v2, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/widget/RemoteViews;

    .line 2959
    .local v6, "views":Landroid/widget/RemoteViews;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2960
    .local v0, "appWidgetId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2962
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V
    invoke-static {v7, v3, v2, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V

    goto :goto_5

    .line 2966
    .end local v0    # "appWidgetId":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v6    # "views":Landroid/widget/RemoteViews;
    :pswitch_21
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2967
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2968
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2969
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2970
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2971
    .restart local v0    # "appWidgetId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2973
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V
    invoke-static {v7, v3, v2, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_5

    .line 2977
    .end local v0    # "appWidgetId":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_3c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2978
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2979
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2980
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2982
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    invoke-static {v7, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    goto :goto_5

    .line 2986
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :pswitch_51
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 2987
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2988
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2989
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2990
    .restart local v0    # "appWidgetId":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2991
    .local v5, "viewId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2993
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V
    invoke-static {v7, v3, v2, v0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V

    goto :goto_5

    .line 2953
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_21
        :pswitch_3c
        :pswitch_51
    .end packed-switch
.end method