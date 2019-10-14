.class Lcom/samsung/android/sdk/cover/CoverListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/CoverListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/CoverListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_2

    const/high16 v2, 0x1020000

    invoke-static {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, v1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, v1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, v1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, v1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v10, v1, Lcom/samsung/android/cover/CoverState;->model:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    :goto_0
    goto :goto_1

    :cond_0
    const/high16 v2, 0x1010000

    invoke-static {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, v1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, v1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, v1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, v1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, v1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, v1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, v1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, v1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    :goto_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coverState : null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
