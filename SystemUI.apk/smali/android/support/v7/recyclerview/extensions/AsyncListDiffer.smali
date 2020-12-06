.class public Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;


# direct methods
.method static synthetic access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V

    return-void
.end method

.method private latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/util/DiffUtil$DiffResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/support/v7/util/DiffUtil$DiffResult;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-virtual {p2, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    return-void
.end method
