.class Lcom/android/server/enterprise/utils/ConstrainedState$2;
.super Ljava/lang/Object;
.source "ConstrainedState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/ConstrainedState;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState$2;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_23

    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState$2;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V

    goto :goto_22

    :cond_18
    const-wide/16 v2, 0x3e8

    :try_start_1a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    goto :goto_1

    :cond_23
    return-void
.end method
