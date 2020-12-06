.class Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;
.super Ljava/lang/Object;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "DualDARDaemonProxy"

    const-string v1, "coudn\'t connect with daemon!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;->this$0:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    iget-object v0, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    return-void
.end method
