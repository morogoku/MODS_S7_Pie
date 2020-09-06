.class Lcom/android/server/statusbar/StatusBarManagerService$7;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$barType:I

.field final synthetic val$dockedBounds:Landroid/graphics/Rect;

.field final synthetic val$dockedStackVis:I

.field final synthetic val$fullscreenBounds:Landroid/graphics/Rect;

.field final synthetic val$fullscreenStackVis:I

.field final synthetic val$mask:I

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$barType:I

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$vis:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$fullscreenStackVis:I

    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$dockedStackVis:I

    iput p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$mask:I

    iput-object p7, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$fullscreenBounds:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$dockedBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$600(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$barType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    :try_start_12
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$600(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$barType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$vis:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$fullscreenStackVis:I

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$dockedStackVis:I

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$mask:I

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$fullscreenBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$dockedBounds:Landroid/graphics/Rect;

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move-exception v0

    :cond_36
    :goto_36
    return-void
.end method
