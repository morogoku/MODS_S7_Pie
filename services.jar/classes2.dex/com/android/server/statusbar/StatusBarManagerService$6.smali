.class Lcom/android/server/statusbar/StatusBarManagerService$6;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$backDisposition:I

.field final synthetic val$showImeSwitcher:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$vis:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$backDisposition:I

    iput-boolean p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$showImeSwitcher:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$600(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_11
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$600(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$vis:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$backDisposition:I

    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$showImeSwitcher:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :cond_2e
    :goto_2e
    return-void
.end method
