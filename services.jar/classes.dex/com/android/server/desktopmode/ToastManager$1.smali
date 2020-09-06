.class Lcom/android/server/desktopmode/ToastManager$1;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/ToastManager;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$toast:Landroid/widget/Toast;

    iput-object p2, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 6

    # getter for: Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->access$000()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    # getter for: Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->access$000()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$toast:Landroid/widget/Toast;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_38

    # getter for: Lcom/android/server/desktopmode/ToastManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toast.onViewDetachedFromWindow("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/ToastManager$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), sToasts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;
    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3a

    throw v1
.end method
