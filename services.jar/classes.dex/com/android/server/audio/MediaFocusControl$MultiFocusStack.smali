.class Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiFocusStack"
.end annotation


# instance fields
.field private mFocusStacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;
    .registers 9

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v4

    if-ne v4, p1, :cond_37

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz p3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_36
    return-object v3

    :cond_37
    goto :goto_15

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusRequester(IZ)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v5

    if-ne v5, p1, :cond_34

    if-eqz p2, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    goto :goto_1a

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_38
    return-object v0
.end method

.method public getFocusStack(I)Ljava/util/Stack;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public keyAt(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(I)Ljava/util/Stack;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->mFocusStacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method
