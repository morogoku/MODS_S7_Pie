.class final Lcom/android/server/wm/TaskWindowContainerController$H;
.super Landroid/os/Handler;
.source "TaskWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# static fields
.field static final REPORT_SNAPSHOT_CHANGED:I = 0x0

.field static final REQUEST_RESIZE:I = 0x1


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/TaskWindowContainerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/TaskWindowContainerController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskWindowContainerController$H;->mController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController$H;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/wm/TaskWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v1, Lcom/android/server/wm/TaskWindowContainerListener;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-nez v1, :cond_13

    return-void

    :cond_13
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_2c

    goto :goto_2b

    :pswitch_19
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/TaskWindowContainerListener;->requestResize(Landroid/graphics/Rect;I)V

    goto :goto_2b

    :pswitch_23
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {v1, v2}, Lcom/android/server/wm/TaskWindowContainerListener;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    nop

    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method
