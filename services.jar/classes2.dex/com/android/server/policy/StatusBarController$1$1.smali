.class Lcom/android/server/policy/StatusBarController$1$1;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionPendingLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v0, v0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending()V

    :cond_d
    return-void
.end method