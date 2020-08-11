.class final Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/Searchables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 7
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 335
    if-ne p1, p2, :cond_4

    .line 336
    const/4 v2, 0x0

    .line 351
    :goto_3
    return v2

    .line 338
    :cond_4
    # invokes: Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p1}, Lcom/android/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    .line 339
    .local v0, "lhsSystem":Z
    # invokes: Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p2}, Lcom/android/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    .line 341
    .local v1, "rhsSystem":Z
    if-eqz v0, :cond_12

    if-nez v1, :cond_12

    .line 342
    const/4 v2, -0x1

    goto :goto_3

    .line 343
    :cond_12
    if-eqz v1, :cond_18

    if-nez v0, :cond_18

    .line 344
    const/4 v2, 0x1

    goto :goto_3

    .line 351
    :cond_18
    iget v2, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr v2, v3

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 332
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
