.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .prologue
    .line 7641
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 7861
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .prologue
    .line 7641
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 10
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 7684
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2400(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    .line 7685
    .local v3, "systemApp":Z
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7686
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 7687
    const-string v5, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_103

    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_38
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7690
    :cond_49
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 7691
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7692
    :cond_6b
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7693
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_72
    if-ge v2, v0, :cond_109

    .line 7694
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 7695
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez v3, :cond_c0

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v4

    if-lez v4, :cond_c0

    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 7696
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 7697
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with priority > 0, forcing to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7700
    :cond_c0
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v4

    if-eqz v4, :cond_da

    .line 7701
    const-string v4, "PackageManager"

    const-string v5, "    IntentFilter:"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7702
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const-string v6, "PackageManager"

    invoke-direct {v4, v5, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v5, "      "

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 7704
    :cond_da
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_fc

    .line 7705
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> For Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7707
    :cond_fc
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 7693
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_72

    .line 7687
    .end local v0    # "NI":I
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "j":I
    :cond_103
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto/16 :goto_38

    .line 7709
    .restart local v0    # "NI":I
    .restart local v2    # "j":I
    :cond_109
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4

    .prologue
    .line 7641
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .registers 8
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7733
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 7734
    .local v1, "filterAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_25

    .line 7735
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7736
    .local v0, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_22

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_22

    .line 7738
    const/4 v3, 0x0

    .line 7741
    .end local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :goto_21
    return v3

    .line 7734
    .restart local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 7741
    .end local v0    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_25
    const/4 v3, 0x1

    goto :goto_21
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    .prologue
    .line 7641
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .registers 5
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 7823
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7825
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 7826
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 7827
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7828
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7829
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 7
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .prologue
    .line 7837
    move-object v0, p3

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 7838
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7840
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7841
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 7842
    const/4 v1, 0x1

    if-le p4, v1, :cond_29

    .line 7843
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7845
    :cond_29
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7846
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 7641
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;
    .registers 3
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 7833
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 4

    .prologue
    .line 7641
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .registers 8
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7751
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 7763
    :cond_a
    :goto_a
    return v2

    .line 7752
    :cond_b
    iget-object v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7753
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_25

    .line 7754
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 7755
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_25

    .line 7759
    iget v4, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_23

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_23
    move v2, v3

    goto :goto_a

    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_25
    move v2, v3

    .line 7763
    goto :goto_a
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 4

    .prologue
    .line 7641
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .prologue
    .line 7769
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 7641
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 7746
    new-array v0, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 11
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 7775
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 7812
    :cond_9
    :goto_9
    return-object v3

    .line 7776
    :cond_a
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7779
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 7780
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_2c

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 7784
    :cond_2c
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 7785
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_9

    .line 7788
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    invoke-static {v0, v4, v5, p3}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 7790
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_9

    .line 7793
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 7794
    .local v3, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7795
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_4f

    .line 7796
    iput-object p1, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 7798
    :cond_4f
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v4

    iput v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .line 7799
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 7802
    iput p2, v3, Landroid/content/pm/ResolveInfo;->match:I

    .line 7803
    iget-boolean v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 7804
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 7805
    iget-object v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 7806
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->userNeedsBadging(I)Z
    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 7807
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 7811
    :goto_74
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2400(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_9

    .line 7809
    :cond_7f
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_74
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 7641
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7652
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 7654
    :goto_9
    return-object v0

    .line 7653
    :cond_a
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 7654
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_12
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7645
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 7647
    :goto_9
    return-object v0

    .line 7646
    :cond_a
    if-eqz p3, :cond_15

    const/high16 v0, 0x10000

    :goto_e
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 7647
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_9

    .line 7646
    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "packageActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    const/4 v0, 0x0

    .line 7660
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 7680
    :cond_9
    :goto_9
    return-object v0

    .line 7661
    :cond_a
    if-eqz p4, :cond_9

    .line 7664
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 7665
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3f

    const/4 v3, 0x1

    .line 7666
    .local v3, "defaultOnly":Z
    :goto_14
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7667
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7671
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1e
    if-ge v8, v6, :cond_41

    .line 7672
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 7673
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v9, :cond_3c

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 7674
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 7676
    .local v7, "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7677
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7671
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 7665
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_3f
    const/4 v3, 0x0

    goto :goto_14

    .restart local v3    # "defaultOnly":Z
    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 7680
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    goto :goto_9
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 9
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 7712
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7713
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 7714
    const-string v4, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8e

    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7717
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7719
    :cond_5d
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7720
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_64
    if-ge v2, v0, :cond_93

    .line 7721
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 7722
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 7723
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7724
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 7726
    :cond_88
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 7720
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 7714
    .end local v0    # "NI":I
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "j":I
    :cond_8e
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_30

    .line 7728
    .restart local v0    # "NI":I
    .restart local v2    # "j":I
    :cond_93
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7817
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/server/pm/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7818
    return-void
.end method
