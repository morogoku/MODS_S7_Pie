.class public final Lcom/android/server/backup/utils/SparseArrayUtils;
.super Ljava/lang/Object;
.source "SparseArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static union(Landroid/util/SparseArray;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "TV;>;>;)",
            "Ljava/util/HashSet<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_17

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-object v0
.end method
