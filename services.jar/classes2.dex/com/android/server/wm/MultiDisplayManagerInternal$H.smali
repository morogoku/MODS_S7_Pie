.class final Lcom/android/server/wm/MultiDisplayManagerInternal$H;
.super Landroid/os/Handler;
.source "MultiDisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiDisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final APP_TRANSITION_FINISHED_FOR_PENDING_LAUNCH_ACTIVITY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiDisplayManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiDisplayManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal$H;->this$0:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private messageToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const-string v0, "UNDEFINED"

    return-object v0

    :cond_6
    const-string v0, "APP_TRANSITION_FINISHED_FOR_PENDING_LAUNCH_ACTIVITY"

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_16

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal$H;->this$0:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    invoke-interface {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->notifyAppTransitionFinished()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "MultiDisplayManagerInternal"

    const-string v2, "Failed to notify AppTransitionFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void
.end method
