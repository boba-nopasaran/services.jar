.class Lcom/mediatek/search/SearchEngineManagerService$1;
.super Landroid/database/ContentObserver;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/SearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/search/SearchEngineManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService$1;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$1;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    # invokes: Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngines()V
    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->access$100(Lcom/mediatek/search/SearchEngineManagerService;)V

    .line 110
    return-void
.end method
