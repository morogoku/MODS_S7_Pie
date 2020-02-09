.class Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$100(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "PlaybackStateMonitor_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitchComplete() userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$200(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$300(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$400(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
